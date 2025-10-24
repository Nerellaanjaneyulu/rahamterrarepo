provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "three" {
  count         = 2
  ami           = "ami-0341d95f75f311023"
  instance_type = "t3.small"

  tags = {
    Name = "dev-server"
  }
}
