variable "s3_sse_algorithm" {
  description = "encryption algorithm used for s3 bucket"
  default     = "AES256"
}

variable "bucket_name" {
  description = "unique name for s3 bucket"
}
