variable "bca_aws_region" {
  description = "AWS region to deploy recources"
  type        = string
  default     = "us-east-1"
}

variable "bca_aws_vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "provider_env_assumed_role" {
  type = map(any)
  default = {
    "bca-aws-master" = "arn:xxxx"
    "bca-aws-dev"    = "arn:xxxx"
    "bca-aws-prod"   = "arn:xxxx"
  }
}