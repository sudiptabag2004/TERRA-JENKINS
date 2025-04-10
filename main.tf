provider "aws" {
  region = "us-east-2"  # Ohio
}

resource "aws_instance" "foo" {
  ami           = "ami-0b1a70953cefcfbca"  # Your custom Amazon Linux 2 AMI in us-east-2
  instance_type = "t2.micro"

  tags = {
    Name = "TF-Instance"
  }
}
