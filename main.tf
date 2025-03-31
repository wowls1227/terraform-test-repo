terraform {

  required_providers {
    aws = {
      source = "jjtfe.ddimtech.click/test1/aws"
      version = "5.93.0"
    }
  }
}

provider "aws" {
  # Configuration options
}
