# output "instance_public_ip" {
#   description = "Public IP of EC2 instance"
#   value       = aws_instance.web_server[*].public_ip
# }


output "instance_public_ip" {
  value = { for key, instance in aws_instance.web_server : key => instance.public_ip }
}
