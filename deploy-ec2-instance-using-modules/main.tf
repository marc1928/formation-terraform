provider "aws" {
  region = "eu-west-1"
}

# Créer un VPC
module "vpc" {
  source = "./modules/vpc"
}

# Créer un Security Group dans le VPC
module "sg" {
  source   = "./modules/security_group"
  vpc_id   = module.vpc.vpc_id
}

# Lancer une instance EC2 avec le Security Group
module "ec2_instance" {
  source            = "./modules/ec2_instance"
  ami_id            = "ami-0c55b159cbfafe1f0" 
  instance_type     = "t2.micro"
  subnet_id         = module.vpc.public_subnets[0] 
  security_group_name = module.sg.sg_name
}
