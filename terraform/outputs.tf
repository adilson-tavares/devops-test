output "ec2_id" {
  description = "The ID of the instance"
  value       = module.ec2_instance.id
}

output "ec2_public_dns" {
  description = "The public DNS name assigned to the instance."
  value       = module.ec2_instance.public_dns
}