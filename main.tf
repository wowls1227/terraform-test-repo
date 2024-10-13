terraform {
  required_providers {
    pgp = {
      source = "ekristen/pgp"
      version = "0.2.4"
    }
  }
}


provider "pgp" {}
provider "aws" {}

resource "pgp_key" "example" {
  name    = "John Doe"
  email   = "jdoe@exammple.com"
  comment = "Generated PGP Key"
}

resource "aws_vpc" "main" {
  cidr_block = "10.150.0.0/16"
}
