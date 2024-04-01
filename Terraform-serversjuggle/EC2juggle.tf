resource "aws_instance" "web_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = "vasakey"
  subnet_id     = var.subnets
  for_each      = toset(["jenkins-master", "ansible"])
  tags = {
    Name = "${each.key}"
  }
  # security_group = sg-0c6de64f936e76c76
  security_groups = [var.security_group_name]
}
# module.aws_web_server_instance.instance_public_ip