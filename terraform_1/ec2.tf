resource "aws_instance" "amb-prod" {
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  key_name = "Terraform"

  vpc_security_group_ids = [ aws_security_group.allow_ssh.id, aws_security_group.allow_http.id, aws_security_group.allow_egress.id ]

  tags = {
    Name = "amb-prod"
  }
}