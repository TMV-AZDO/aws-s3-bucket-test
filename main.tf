
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = 
  secret_key = 
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "hh-test-bucket-001"
  acl    = "private"

  tags = {
    Name = "State File Bucket"
  }
}
