terraform {
  required_version = ">= 1.5.0"
}

variable "release_version" {
  type    = string
  default = "v1"
}

resource "terraform_data" "deployment" {
  input = {
    application = "project18-demo"
    version     = var.release_version
    environment = "production"
  }
}

output "deployed_version" {
  value = terraform_data.deployment.output.version
}
