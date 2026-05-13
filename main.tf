module "vpc" {
  source = "./modules/vpc"
}
 
module "ec2" {
  source        = "./modules/ec2"
  subnet_id     = module.vpc.subnet_id
  vpc_id        = module.vpc.vpc_id
  ami_id        = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
}
 
module "s3" {
  source = "./modules/s3"
}
