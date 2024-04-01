# resource "aws_security_group" "vasakey-sg" {
#   name        = "vasakey-sg"
#   description = "Allow SSH inbound connections"
#   vpc_id = aws_vpc.vasakey.id
#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   egress {
#     from_port       = 0
#     to_port         = 0
#     protocol        = "-1"
#     cidr_blocks     = ["0.0.0.0/0"]
#   }
#   tags = {
#     Name = "vasakey_allow_sg"
#   }
# }