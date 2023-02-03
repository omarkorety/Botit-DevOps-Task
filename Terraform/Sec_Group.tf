resource "aws_security_group" "allow_all" {
  name        = "sG01"
  vpc_id      = aws_vpc.tera-vpc.id
  description = "Allow ssh inbound traffic"

  ingress {
    description = "Allow all inbound traffic"
    from_port   = 0
    to_port     = 65535
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}