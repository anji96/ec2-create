output "sandbox_instance_ids" {
  value       = aws_instance.sandbox_ec2[*].id
  description = "The unique AWS IDs assigned to all sandbox EC2 instances"
}

output "sandbox_instance_private_ips" {
  value       = aws_instance.sandbox_ec2[*].private_ip
  description = "The private IP addresses of all sandbox instances"
}
