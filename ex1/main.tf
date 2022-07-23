resource "aws_security_group" "allow_openssh" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-01319e8239394406e"

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_openssh"
  }
}

resource "aws_instance" "web" {
  ami           = "ami-096bf0fa7bc26ab09"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_openssh.id]
  tags = {
    Name = "terraform"
  }
}