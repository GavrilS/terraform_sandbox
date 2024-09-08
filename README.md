# terraform_sandbox

A repository to try terraform tutorials

# Useful terraform commands:

terraform init -> initialize after changes
terraform fmt -> format the code in terraform configuration files
terraform validate -> validate the terraform configuration
terraform version -> check version
terraform plan -> make a plan
terraform apply -> apply infrastructure from the configuration files
terraform destroy -> destroy the currently deployed infrastructure
terraform state list -> list the currently deployed infrastructure from the state
terraform state show <resource> -> shows information about the resource from state
terraform apply -var "<var_name>=<var_value>" -> provide a value for a variable
terraform apply --auto-approve -> apply changes automatically without asking for permission
