provider "aws" {
  region = "eu-west-1"
}

module "network" {
  source = "./modules/network"

  vpc_cidr      = "10.0.0.0/16"
  vpc_name      = "demo-vpc"
  subnet_a_cidr = "10.0.1.0/24"
  subnet_b_cidr = "10.0.2.0/24"
  az1           = "eu-west-1a"
  az2           = "eu-west-1b"
}


module "eks" {
  source       = "./modules/eks"
  
  # במקום לכתוב "demo-cluster" ידנית, את מושכת את זה מהמשתנה!
  cluster_name = var.cluster_name
  
  subnet_ids = module.network.public_subnets
}
