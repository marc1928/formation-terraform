variable "environment" {
  type = string
  default = "development"
}

variable "region" {
  type = string
  default = "eu-west-3"
}

variable "instance_name" {
  type = list(string)
  default = ["DBA-ric", "PROD-ric", "Dev-ric"]
}