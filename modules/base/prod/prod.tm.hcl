stack {
  name        = "Basline PROD"
  description = "Azure Baseline PROD."
  id          = "e5d5cdbe-792d-4ddc-8589-be730845b032"
  tags        = ["prod"]
}


generate_hcl "terraform.tfvars" {
  assert {
    assertion = tm_length(global.aws_region) > 0
    message   = "The ${global.aws_region} variable must have value"
  }
  content {
    aws_region    = global.aws_region
    client_abbr   = global.client
    instance_type = "t2.micro"
    org           = tm_trimspace(tm_upper("${global.org}"))
    vm_name       = "worker"
  }
}