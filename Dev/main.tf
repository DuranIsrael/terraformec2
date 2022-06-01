terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region  = var.region
}

module "EC2" {
  source = "./EC2"
  ami = "<YOUR AMI HERE>"
  instance_type = "<INSTANCE TYPE HERE"
}