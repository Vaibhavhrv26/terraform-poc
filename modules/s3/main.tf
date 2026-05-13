resource "aws_s3_bucket" "bucket" {
  bucket = "vaibhav-demo-poc-bucket-2026"

  tags = {
    Name = "TerraformBucket"
  }
}
