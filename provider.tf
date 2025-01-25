terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "statefile-backend-bucket"
    key    = "backend/state/terraform.tfstate"
    dynamodb_table = "statefile-table"
    region = "us-east-2"
  }
}

provider "aws" {
  # Configuration options
  profile = var.profile
  region  = var.region
}