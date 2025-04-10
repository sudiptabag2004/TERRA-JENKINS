provider "aws" {
  region = "us-east-2"  # Ohio
}

resource "aws_instance" "foo" {
  ami           = "ami-0b898040803850657"  # Amazon Linux 2 in us-east-2
  instance_type = "t2.micro"

  tags = {
    Name = "TF-Instance"
  }
}
