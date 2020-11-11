provider "aws" {
  region = "ap-south-1"
}
module "bucket_creation" {
    source = "../modules/s3"
    environment = "dev"
    s3_bucket_name = ["berlin-crazy-weather-hourly", "berlin-crazy-weather-daily", "berlin-crazy-weather-weekly"]
    transition_onea = ["10", "20", "30"]
    transition_glacier = [10, 20, 30]
    dataexpiry = ["10", "30", "90"]
}