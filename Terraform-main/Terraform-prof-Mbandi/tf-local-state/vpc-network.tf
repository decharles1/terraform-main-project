#Developmnt VPC
resource "aws_vpc" "Dev-VPC" {
  cidr_block= var.Dev-vpc-cidrblock
  instance_tenancy = var.Dev-vpc-instance-tenency
  tags = {
    Name = "Dev-VPC"
  }
}
#Developmnt subnet 1
resource "aws_subnet" "Dev-subnet-1" {
  vpc_id     = aws_vpc.Dev-VPC.id
  cidr_block = var.Dev-subnet-1-cidrblock
  availability_zone = var.Dev-subnet-1-availability-zone
  tags = {
    Name = "Dev-subnet-1"
  }
}
#Developmnt subnet 2
resource "aws_subnet" "Dev-subnet-2" {
  vpc_id     = aws_vpc.Dev-VPC.id
  cidr_block = var.Dev-subnet-2-cidrblock
  availability_zone = var.Dev-subnet-2-availability-zone
  tags = {
    Name = "Dev-subnet-2"
  }
}

#Development VPC internet gateway
resource "aws_internet_gateway" "Dev-VPC-IGW" {
  vpc_id = aws_vpc.Dev-VPC.id
  tags = {
    Name = "Dev-VPC-IGW"
  }
}