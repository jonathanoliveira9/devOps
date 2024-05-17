resource "aws_security_group" "allow_ssh" {
  name        = "ssh"
  description = "Allow Remote Access SSH(22)"
  
  ingress {
    description = "SSH from VPC"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_security_group" "allow_http" {
  name        = "http"
  description = "Allow Remote Access HTTP(80)"
  
  ingress {
    description = "HTTP from VPC"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name = "allow_http"
  }
}


resource "aws_security_group" "allow_egress" {
  name        = "egress"
  description = "Allow egress"
  
  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_egress"
  }
}
