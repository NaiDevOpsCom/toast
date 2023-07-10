module "vpc" {
  source = "./modules/vpc"

}

//public instance 
module "ec2" {
  source = "./modules/ec2"
  vpc_id = module.vpc.vpc_id
  subnet = module.vpc.public_subnet_az1_id
  security_group = module.sg.security_group_id
}

module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id

}

