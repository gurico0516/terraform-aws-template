module "network" {
  source              = "./modules/network"
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = var.availability_zone
  nat_allocation_id   = var.nat_allocation_id
  nat_private_ip      = var.nat_private_ip
  igw_id              = var.igw_id
}

module "security" {
  source = "./modules/security"
  vpc_id = module.network.vpc_id
}

module "instances" {
  source                  = "./modules/instances"
  ami                     = var.ami
  instance_type           = var.instance_type
  availability_zone       = var.availability_zone
  public_key_name         = var.public_key_name
  private_key_name        = var.private_key_name
  public_subnet_id        = module.network.public_subnet_id
  private_subnet_id       = module.network.private_subnet_id
  web_sg_id               = module.security.web_sg_id
  db_sg_id                = module.security.db_sg_id
  web_instance_private_ip = var.web_instance_private_ip
  db_instance_private_ip  = var.db_instance_private_ip
}
