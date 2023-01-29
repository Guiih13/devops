terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.52.0"
    }
  }
}


provider "aws" {
    region = "us-east-1"
}

# Resource S3
resource "aws_s3_bucket" "bucket_guiimartinss_v1" {
    bucket = "bucket-guiimartinss-v2"
    versioning {
      enabled = true
    }
}

# Resource IAM User
resource "aws_iam_user" "command_line_user" {
  name = "WKD_GuiihMartins"
}

