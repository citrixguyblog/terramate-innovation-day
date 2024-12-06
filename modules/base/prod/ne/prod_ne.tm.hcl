globals {
  azure_region = "northeurope"
}

stack {
  name        = "Basline PROD NE"
  description = "Azure Baseline Production for North Europe."
  id          = "9b1ceb5f-cbba-490f-ba76-7310af911562"
  tags        = ["prod", "ne"]
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