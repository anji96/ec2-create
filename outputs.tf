output "sandbox_instances_summary" {
  description = "Detailed network summary of all deployed sandbox instances"
  value = {
    for index, instance in aws_instance.sandbox_ec2 :
    "instance_${index + 1}" => {
      instance_id   = instance.id
      subnet_id     = instance.subnet_id
      private_ip    = instance.private_ip
      
      # If the instance is in a private/isolated subnet, these will gracefully return empty string ""
      public_ip     = instance.public_ip != "" ? instance.public_ip : "N/A (No Public IP)"
      public_dns    = instance.public_dns != "" ? instance.public_dns : "N/A (No Public DNS)"
    }
  }
}
