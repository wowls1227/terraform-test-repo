terraform {

  required_providers {
    aws = {
      source = "jjtfe.ddimtech.click/test2/aws"
      version = "5.93.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

module "example" {
  source  = "https://github.com/kjjprivate/terraform-module-upload-private-provider.git"
}