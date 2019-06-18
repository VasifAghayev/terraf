provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "/root/.aws/credentials"
}

resource "aws_instance" "ubuntu18" {
  ami = "ami-0a313d6098716f372"
  instance_type = "t2.micro"
  tags {
    Name = "terraform-example"
  }
}
