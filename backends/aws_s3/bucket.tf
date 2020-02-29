#S3 Bucket definition for use as a Terraform backend
resource "aws_s3_bucket" "terraform_backend" {
  bucket = var.bucket_name
  acl    = "private"
  region = var.aws_region

  versioning {
    enabled = true
  }
}
