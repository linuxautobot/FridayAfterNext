resource "aws_s3_bucket" "friday" {
  count  = length(var.s3_bucket_name)
  bucket = element(var.s3_bucket_name, count.index)
  acl    = "private"

  tags = {
    Name        = element(var.s3_bucket_name, count.index)
    Environment = var.environment
  }

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        # kms_master_key_id = aws_kms_key.mykey.arn
        # sse_algorithm     = "aws:kms"
        sse_algorithm = "AES256"
      }
    }
  }


  lifecycle_rule {
    id      = "log"
    enabled = true

    prefix = "log/"

    tags = {
      "rule"      = "log"
      "autoclean" = "true"
    }

    transition {
      days          = element(var.transition_onea, count.index)
      storage_class = "ONEZONE_IA"
    }

    transition {
      days          = element(var.transition_onea, count.index)
      storage_class = "GLACIER"
    }

    expiration {
      days = element(var.transition_onea, count.index)
    }
  }

  #   lifecycle_rule {
  #     id      = "tmp"
  #     prefix  = "tmp/"
  #     enabled = true

  #     expiration {
  #       date = "2021-01-12"
  #     }
  #   }

}