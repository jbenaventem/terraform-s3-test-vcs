# main.tf

resource "random_id" "tf_bucket_id" {
  byte_length = 2
}

# Create the bucket
resource "aws_s3_bucket" "tf_code" {
  bucket        = var.project_name
  force_destroy = true

  tags = {
    Name = "tf_bucket-sentinel-task"
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.tf_code.id
  acl    = "private"
}