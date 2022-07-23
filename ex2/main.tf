module "sg" {
  source = "./security-group"
}

module "instance" {
  source = "./instance"
}

terraform {
  backend "s3" {
    bucket = "terraformstatefile-bucket"
    key    = "ex2/terraform.tfstate"
    region = "us-east-1"
  }
}