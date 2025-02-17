output "vpc_id" {
  value = module.network.vpc_id
}

output "public_subnet_id" {
  value = module.network.public_subnet_id
}

output "private_subnet_id" {
  value = module.network.private_subnet_id
}

output "web_instance_id" {
  value = module.instances.web_instance_id
}

output "db_instance_id" {
  value = module.instances.db_instance_id
}

output "web_public_ip" {
  value = module.instances.web_public_ip
}
