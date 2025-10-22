provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "three" {
  count         = 2
  ami           = "ami-06fa3f12191aa3337"
  instance_type = "t3.small"

  tags = {
    Name = "test-server"
  }
}
