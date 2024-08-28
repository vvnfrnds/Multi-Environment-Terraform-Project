resource "aws_s3_bucket" "bucketwala" {
  bucket = "${var.env_name}-${var.bucket_name}"
}
