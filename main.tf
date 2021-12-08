
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
  access_key = "AKIA3Y3S4W3IYO27WSXA"
  secret_key = "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"
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "hh-test-bucket-001"
  acl    = "private"

  tags = {
    Name = "State File Bucket"
  }
}