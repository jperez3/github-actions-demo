resource "aws_s3_bucket" "ec2" {
  bucket = var.bucket_name

  acl           = "private"
  force_destroy = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = var.s3_sse_algorithm
      }
    }
  }

  versioning {
    enabled    = true
    mfa_delete = true
  }



}
