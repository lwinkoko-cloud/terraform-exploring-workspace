terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.60.0"
    }
  }
}

provider "aws" {
  # Configuration options
  # profile = "bca-aws-master"
  # alias = "bca-aws-master"
  assume_role {
    role_arn = var.provider_env_assumed_role[terraform.workspace]
  }
  region = var.bca_aws_region
}