module "vpc" {
  source                = "./module/vpc"
  env                   = var.env
  vpc_cidr              = var.vpc_cidr
  public_subnet_cidr    = var.public_subnet_cidr
  private_subnet_cidr   = var.private_subnet_cidr
}

module "sg" {
  source = "./module/sg"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source            = "./module/ec2"
  subnet_id         = module.vpc.private_subnet_id
  security_group_id = module.sg.ec2_sg_id
  instance_type     = var.instance_type
  key_name          = var.key_name
}

module "alb" {
  source            = "./module/alb"
  vpc_id            = module.vpc.vpc_id
  public_subnet_id  = module.vpc.public_subnet_id
  alb_sg_id         = module.security.alb_sg_id
  instance_id       = module.ec2.instance_id
}
