module "vpc" {
  source         = "./modules/vpc"
  vpc_cidr       = var.vpc_cidr
  public_subnet  = var.public_subnet
  private_subnet = var.private_subnet
  public_names   = var.public_names
  private_names  = var.private_names
}

module "eks" {
  source                = "./modules/eks"
  cluster_name          = var.cluster_name
  subnet_ids            = module.vpc.private_subnet_id
  instance_type         = var.instance_type
  desired_size          = var.desired_size
  max_size              = var.max_size
  min_size              = var.min_size
  node_group_subnet_ids = module.vpc.private_subnet_id
  nodegroup_name        = var.nodegroup_name
}