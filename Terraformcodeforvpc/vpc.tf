resource "aws_vpc" "vasakey" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = true
}