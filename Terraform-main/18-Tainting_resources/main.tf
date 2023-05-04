provider "aws" {
  region = "us-east-1"
  profile = "default"
}
resource "aws_instance" "test" { 
ami = "ami-0b0dcb5067f052a63"
instance_type = "t2.medium"
tags = {
Name = "Taint"}

}