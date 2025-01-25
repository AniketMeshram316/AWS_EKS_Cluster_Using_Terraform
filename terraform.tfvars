# 1. vpc configurations values

vpc_cidr       = "10.0.0.0/16"
public_subnet  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet = ["10.0.3.0/24", "10.0.4.0/24"]
public_names   = ["PublicSubnet1", "PublicSubnet2"]
private_names  = ["PrivateSubnet1", "PrivateSubnet2"]

# 2.  eks configurations values

cluster_name   =  "eks-cluster"
nodegroup_name =  "eks-node-group" 
desired_size   = 1
max_size       = 2
min_size       = 1
instance_type  = [ "t3.medium" ]
subnet_ids = ["10.0.3.0/24", "10.0.4.0/24"]
node_group_subnet_ids = ["10.0.3.0/24", "10.0.4.0/24"]