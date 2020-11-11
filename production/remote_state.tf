terraform {
  backend "s3" {
    bucket = "frontend-log"
    key    = "production/terraform.tfstate"
    region = "ap-south-1"
  }
}
