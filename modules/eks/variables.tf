variable "cluster_name" {
  type = string
}
variable "nodegroup_name" {
  type = string
}
variable "node_group_subnet_ids" {}
variable "desired_size" {}
variable "max_size" {}
variable "min_size" {}
variable "instance_type" {
    type = list(string)
}

variable "subnet_ids" {
  type = list(string)
}
