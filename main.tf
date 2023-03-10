provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "mysub" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"
}

 

resource "aws_instance" "example" {
  ami           = "0d81306eddc614a45"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.mysub.id
 
}
