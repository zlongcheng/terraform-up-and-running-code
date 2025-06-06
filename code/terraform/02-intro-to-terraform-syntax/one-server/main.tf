terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "terraform"
}

resource "aws_instance" "lcheng-example" {
  ami           = "ami-0e58b56aa4d64231b"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0c5b9372ce86ad921"

  tags = {
    Name = "terraform-example"
  }
}
