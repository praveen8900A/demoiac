provider "aws" {
  region = "eu-west-1" # Specify your AWS region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "iacdemobcktpk" # Updated bucket name
  acl    = "private"

  tags = {
    Name        = "iacdemobckt"
    Environment = "Development"
  }
}


resource "aws_s3_bucket" "my_bucket_log_bucket" {
  bucket = "my_bucket-log-bucket"
}

resource "aws_s3_bucket_logging" "my_bucket" {
  bucket = aws_s3_bucket.my_bucket.id

  target_bucket = aws_s3_bucket.my_bucket_log_bucket.id
  target_prefix = "log/"
}