terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.21.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

# resource "aws_s3_bucket" "wordpress-bucket" {
#   bucket = "deham24-wordpress-bucket-v2"

#   tags = {
#     Name        = "Webserver Bucket"
#     Environment = "Test"
#   }
# }

resource "aws_instance" "wordpress-instance" {
  ami           = "ami-04f9aa2b7c7091927"
  instance_type = "t3.micro"

  tags = {
    Name = "Wordpress-Webserver"
  }
}