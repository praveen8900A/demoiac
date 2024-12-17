provider "aws" {
  region = "eu-west-1" # Specify your AWS region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "iacdemobckt" # Updated bucket name
  acl    = "private"

  tags = {
    Name        = "iacdemobckt"
    Environment = "Development"
  }
}
