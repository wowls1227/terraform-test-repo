terraform {
  required_providers {
    pgp = {
      source = "ekristen/pgp"
      version = "0.2.4"
    }
    aws = {
      version = "5.30.0"
    }
  }
}

provider "null" {}

resource "null_resource" "example_sleep" {
  # 100,000초 동안 기다리기
  provisioner "local-exec" {
    command = "sleep 100000"
  }
}
