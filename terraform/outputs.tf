output "ec2_id" {
  description = "The ID of the instance"
  value       = module.ec2.id
}

output "ec2_public_dns" {
  description = "The public DNS name assigned to the instance."
  value       = module.ec2.public_dns
}