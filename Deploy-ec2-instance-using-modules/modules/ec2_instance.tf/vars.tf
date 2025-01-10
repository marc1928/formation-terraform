variable "ami_id" {
  description = "ID de l'AMI à utiliser"
  type        = string
}

variable "instance_type" {
  description = "Type d'instance EC2"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "ID du sous-réseau dans lequel l'instance sera lancée"
  type        = string
}

variable "security_group_name" {
  description = "Nom du Security Group à associer à l'instance EC2"
  type        = string
}

variable "instance_tags" {
  description = "Tags associés à l'instance"
  type        = map(string)
  default     = {
    Name = "MyInstance"
  }
}
