output "vpc" {
  value = module.vpc.vpc_id
}
output "public_subnet" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet" {
  value = module.vpc.private_subnet_ids
}