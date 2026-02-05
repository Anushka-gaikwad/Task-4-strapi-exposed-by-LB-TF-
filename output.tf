output "alb_dns_name" {
  description = "Public DNS to access Strapi application"
  value       = module.alb.alb_dns_name
}

output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "private_instance_id" {
  description = "Private EC2 instance ID"
  value       = module.ec2.instance_id
}
