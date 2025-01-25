# Provider.tf variables

variable "region" {
  default = "us-east-2"
}

variable "profile" {
  default = "default"
}

# Vpc variables

variable "vpc_cidr" {
  description = "This is vpc  cidr"
}

variable "public_subnet" {
  description = "This is public subnet cidr"
}

variable "private_subnet" {
  description = "This is public subnet cidr"
}

variable "public_names" {
  description = "Subnet names"
  type        = list(string)
}

variable "private_names" {
  description = "Subnet names"
  type        = list(string)
}


# EKS variables

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
