variable "environment" {
  type = string
  default = "Dev"
}
variable "s3_bucket_name" {
  type = list
  default     = ["berlin-crazy-weather-hourly", "berlin-crazy-weather-daily", "berlin-crazy-weather-weekly"]
}

variable "transition_state" {
  type = flatten
  default    = ([[10, 20, 30], [] ,[10, 20, 30],[] ,[10, 30, 90]])
}

# variable "transition_glacier" {
#   type = list
#   default = [10, 20, 30]

# }

# variable "dataexpiry" {
#   type = list
#   default = ["10", "30", "90"]
# }
#data "aws_availabilty_zones" "azs" {}


