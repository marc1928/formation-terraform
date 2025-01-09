locals {
  default = {
    Team = "security-teams"
    CreationDate = "date-${formatdate("DD-MM-YYYY",timestamp())}"    
    
  }
}