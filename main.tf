provider "aws" {
  region = "us-west-1"
}


resource "aws_s3_bucket" "abc" {
  provider = aws
  count = 3
  #bucket = var.bucketname1
  bucket = "${var.bucketname1}-${count.index + 1}"

  tags = {
    environment = "dev"
  }
}

resource "aws_s3_bucket" "abc1" {
  provider = aws
  bucket = var.bucketname2
  #acl = "public-read"
}
