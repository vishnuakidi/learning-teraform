resource "aws_instance" "web" {
   ami           = "ami-096bf0fa7bc26ab09"
  instance_type = "t3.micro"

  tags = {
    Name = "var.nametag"
  }
}

variable "nametag" {}