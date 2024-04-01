resource "aws_instance" "web_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name = "vasakey"
  subnet_id = aws_subnet.subnet-1.id
  for_each = toset(["jenkins-master", "build-slave", "ansible"])
   tags = {
     Name = "${each.key}"
   }
}
# module.aws_web_server_instance.instance_public_ip