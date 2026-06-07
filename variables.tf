variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "The target AWS region for deployment"
}

variable "ami_id" {
  type        = string
  default     = "ami-0c7217cdde317cfec" # Replace with a valid sandbox-region AMI
  description = "The AMI ID to use for the EC2 instance"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "The size of the EC2 instance"
}

variable "vpc_id" {
  type        = string
  description = "The ID of your existing sandbox VPC"
}

variable "subnet_id" {
  type        = string
  description = "The ID of your target sandbox Subnet"
}

variable "security_group_id" {
  type        = string
  description = "The ID of your existing sandbox Security Group"
}

variable "key_name" {
  type        = string
  description = "The exact name of your pre-existing AWS Key Pair"
}
