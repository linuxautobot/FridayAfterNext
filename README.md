# FridayAfterNext

AWS S3 bucket Terraform module

Terraform versions
Terraform 0.13 and above are supported.

Usage
Private bucket with versioning enabled
module "s3_bucket" {
  source = "../module/s3"

  bucket = "my-s3-bucket"
  acl    = "private"

  versioning = {
    enabled = true
  }

}

# S3 bucket created with below configurations 
- versioning
- lifecycle rules
- server-side encryption


S3 One Zone-IA has 20% less cost than Standard-IA
S3 Standard-IA costs less than S3 Standard in terms of storage price, while still providing the same high durability, throughput, and low latency of S3 Standard.
