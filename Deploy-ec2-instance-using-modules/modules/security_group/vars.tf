variable "sg_name" {
  description = "Nom du Security Group"
  type        = string
  default     = "EC2SecurityGroup"
}

variable "sg_description" {
  description = "Description du Security Group"
  type        = string
  default     = "Allow SSH and HTTP access"
}

variable "vpc_id" {
  description = "ID du VPC auquel appartient le Security Group"
  type        = string
}

variable "sg_tags" {
  description = "Tags associés au Security Group"
  type        = map(string)
  default     = {
    Name = "EC2SecurityGroup"
  }
}
