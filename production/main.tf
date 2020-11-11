provider "aws" {
  region = "ap-south-1"
}
module "bucket_creation" {
    source = "../modules/s3"
    environment = "dev"
    s3_bucket_name = ["berlin-weather-hourly", "berlin-weather-daily", "berlin-weather-weekly"]
    transition_onea = [5, 10, 30]
    transition_glacier = [10, 20, 45]
    dataexpiry = [20, 30, 60]
}