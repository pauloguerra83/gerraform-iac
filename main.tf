terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}


provider "aws" {
  region  = "sa-east-1"
  access_key = "AKIAVQKSQEIRCF5ESGM2"
  secret_key = "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"
}

resource "aws_instance" "app_server" {
  instance_type = "t2.micro"

  tags = {
    Name = "gerraform-study"
  }
}