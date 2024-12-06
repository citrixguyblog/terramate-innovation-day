globals {
  azure_region = "westheurope"
}

stack {
  name        = "Basline PROD WE"
  description = "Azure Baseline Production for West Europe."
  id          = "8d66daf6-ff74-412c-a712-a1fd9b63e374"
  tags        = ["prod", "we"]
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