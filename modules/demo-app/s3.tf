resource "aws_s3_bucket" "bucketwala" {
  bucket = "${var.env_name}-${var.bucket_name}-${random_string.suffix.result}"   //Specify bucket resource details
}

resource "random_string" "suffix" {  //Resource for adding S3Bucket names automatically
 length = 6
  special = false
 upper = false
}
