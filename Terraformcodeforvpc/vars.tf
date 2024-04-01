
variable "region" {
  default = "ap-south-1"
}

variable "ami_id" {
  default = "ami-007020fd9c84e18c7"
}

# variable "credentials" {
#   default = "/root/.aws/credentials"
# }

variable "vpc_cidr" {
  default = "10.20.0.0/16"
}

variable "subnet-1" {
  default = "10.20.1.0/24"
}

variable "subnet-2" {
  default = "10.20.2.0/24"
}
variable "instance_type" {
  description = "Instance type for EC2 instances"
  type        = string
  default     = "t2.micro"
}
