provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "29fe1dfc-2b01-4691-86e2-aab9720ee858"
    git_commit           = "93ecafdac29c6ffc729106ad66f528fab45e5c1a"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-05-15 23:27:16"
    git_last_modified_by = "scott_millers@hotmail.com"
    git_modifiers        = "scott_millers"
    git_org              = "scottmillers"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
