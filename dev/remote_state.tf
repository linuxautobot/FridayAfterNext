terraform {
  backend "s3" {
    bucket = "frontend-log"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
  }
}
