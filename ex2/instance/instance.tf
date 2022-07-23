resource "aws_instance" "web" {
  ami           = "ami-096bf0fa7bc26ab09"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_openssh.id]
  tags = {
    Name = "terraform"
  }
}
