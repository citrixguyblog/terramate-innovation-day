globals {
  azure_region = "northeurope"
}

stack {
  name        = "Basline DEV NE"
  description = "Azure Baseline Development for North Europe."
  id          = "1013afe1-6f64-4c4f-ab88-be439491044c"
  tags        = ["dev", "ne"]
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