variable "no-of-instances" {
  default = 2
}

resource "aws_instance" "web" {
  count         = var.no-of-instances
  ami           = "ami-096bf0fa7bc26ab09"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform"
  }
}