terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "myfile" {
  filename = var.filename
  content  = var.content
}