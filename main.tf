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
variable "Hub_Access_key" {}
variable "Hub_Secret_key" {}
variable "Hub_region" {}

provider "pgp" {}
provider "aws" {
access_key = var.Hub_Access_key
secret_key = var.Hub_Secret_key
region = var.Hub_region
}

resource "pgp_key" "example" {
  name    = "John Doe"
  email   = "jdoe@exammple.com"
  comment = "Generated PGP Key"
}

resource "aws_vpc" "main" {
  cidr_block = "10.150.0.0/16"
}
