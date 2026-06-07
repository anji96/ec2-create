resource "aws_instance" "sandbox_ec2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name               = var.key_name

  # User data script to install AWS CLI v2 on Ubuntu
  user_data = <<-EOF
              #!/bin/bash
              # Update package list
              apt-get update -y
              
              # Install unzip (required to unpack the AWS CLI installation files)
              apt-get install -y unzip curl
              
              # Download and install AWS CLI v2
              cd /tmp
              curl "https://amazonaws.com" -o "awscliv2.zip"
              unzip awscliv2.zip
              ./aws/install
              EOF

  # Optional: Ensures instance recreates if user_data changes during testing
  user_data_replace_on_change = true

  tags = {
    Name = "sandbox-runner-ec2"
  }
}
