terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.47.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "molmo-quantized-instance" {
  ami           = "ami-0b72821e2f351e396"
  instance_type = "g4dn.xlarge"
}
