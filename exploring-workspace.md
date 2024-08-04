master
arn:

pord
arn:

dev
arn:

terraform workspace list
terraform workspace create bca-aws-master
terraform workspace list #verify

terraform workspace create bca-aws-prod
terraform workspace list #verify

terraform workspace create bca-aws-dev
terraform workspace list #verify

# selecting workspace
terraform workspace select bca-aws-master

# destroy the resources
terraform destroy --auto-approve

# working with tfvars and workspaces
terraform workspace select bca-aws-master
terraform init
terraform plan -var-file bca-aws-master-variables.tfvars  # tfvars file name
terraform apply -var-file bca-aws-master-variables.tfvars

terraform workspace select bca-aws-prod
terraform init
terraform plan -var-file bca-aws-prod-variables.tfvars  # tfvars file name
terraform apply -var-file bca-aws-prod-variables.tfvars

terraform workspace select bca-aws-dev
terraform init
terraform plan -var-file bca-aws-dev-variables.tfvars  # tfvars file name
terraform apply -var-file bca-aws-dev-variables.tfvars
