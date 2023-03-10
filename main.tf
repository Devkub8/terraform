provider "aws" {
  access_key = "AKIAZA524WNNLXHM23FB"
  secret_key = "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"
  region     = "ap-south-1"
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "myvpc"
  }
}

resource "aws_subnet" "mysub" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"
}


# resource "aws_instance" "myec2" {
  # ami           = "ami-0f8ca728008ff5af4"
  # instance_type = "t2.micro"
  # subnet_id     = aws_subnet.mysub.id
  # // key_name = data.aws_key_pair.mykey.key_name
  # associate_public_ip_address= true 
  #  key_name = "mykey"
   
  # tags= {
  #   Name="honey"
  # }
# }
 
resource "aws_instance" "myec2" {
    ami = "ami-0d81306eddc614a45"
    instance_type = "t2.micro"
   
      key_name = "jen"
}


