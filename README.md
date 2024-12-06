# Terramate Innovation Day

## Start from Terraform 
terramate create --all-terraform  
terramate list  
terramate run -- terraform init  
terramate run --parallel 5 -- terraform plan -out plan.tfplan
terramate run --changed -- terraform apply -auto-approve plan.tfplan  