variable "instance_count" {
  type = number
  default = 3
}

variable "dev_team" {
  type = list(string)
  default = ["devops", "dev", "ops"]
}