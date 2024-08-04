locals {
  provider_alias = terraform.workspace
}

# Create VPC
resource "aws_vpc" "bca_aws_vpc" {
  cidr_block           = var.bca_aws_vpc_cidr
  enable_dns_hostnames = true

  tags = {
    Name = "${local.provider_alias}-vpc"
  }
}

# Use data source to get all availability zone in region
data "aws_availability_zones" "bca_aws_available_azs" {
  state = "available"
}