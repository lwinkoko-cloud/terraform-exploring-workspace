output "bca_aws_vpc" {
  value = aws_vpc.bca_aws_vpc.id
}

output "aws_availability_zones" {
  value = data.aws_availability_zones.bca_aws_available_azs.id
}