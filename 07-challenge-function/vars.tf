variable "region" {
  default = "eu-west-3"
}

variable "tags" {
  type = list
  default = ["firstec2","secondec2"]
}

variable "ami" {
  type = map
  default = {
    "us-east-1" = "ami-08a0d1e16fc3f61ea"
    "us-west-2" = "ami-0b20a6f09484773af"
    "eu-west-3" = "ami-07dc1ccdcec3b4eab"
  }
}