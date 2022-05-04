variable "project_name" {
  description = "Name of the s3 Bucket."
  default     = "test-cto-s3-bucket"
}

variable "aws_region" {
  description = "AWS Region"
  default     = "eu-west-1"
}

variable "env" {
  description = "env: dev or prod"
  default     = "prod"
}
