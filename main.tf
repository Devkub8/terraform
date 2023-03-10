provider "aws" {
  access_key = "AKIAZA524WNNEF2WCW4F"
  secret_key = "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"
  region     = "ap-south-1"
}
resource "aws_instance" "uday" {
    ami = "ami-0d81306eddc614a45"
    instance_type = "t2.micro"
}
