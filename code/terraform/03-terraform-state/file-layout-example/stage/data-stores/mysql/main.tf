terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    # S3: replace this with your bucket name!
    bucket = "clong-tua-state"
    key    = "stage/data-stores/mysql/terraform.tfstate"
    region = "us-east-2"
    # DDB: replace this with your DynamoDB table name!
    dynamodb_table = "clong-tua-locks"
    encrypt        = true
  }
}

provider "aws" {
  region  = "us-east-2"
  profile = "default"
}

resource "aws_db_instance" "example" {
  identifier_prefix   = "terraform-up-and-running"
  engine              = "mysql"
  engine_version      = "8.0.40"
  allocated_storage   = 10
  instance_class      = "db.t3.micro"
  skip_final_snapshot = true

  db_name = var.db_name

  username = var.db_username
  password = var.db_password
}
