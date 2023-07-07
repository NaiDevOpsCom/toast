module "vpc" {
  source = "./modules/vpc"
  
}

//TBD
module "ec2" {
	source = "./modules/ec2"
  vpc_id = module.vpc.vpc_id
  subnet = module.vpc.public_subnet_az1_id
}
