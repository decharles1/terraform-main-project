/*
# dev instance ami id
variable "Dev-instance-ami-id" {
  description = "Development ami id"
  type        = string
  default = "ami-089a545a9ed9893b6"
}

# dev instance type
variable "Dev-instance-type" {
  description = "Development instance type"
  type        = string
  default = "t2.micro"
}
*/

# dev vpc cidr block
variable "Dev-vpc-cidrblock" {
  description = "Development vpc cidr block"
  type        = string
  #default = "10.0.0.0/16"
}

# dev vpc instance tenancy
variable "Dev-vpc-instance-tenency" {
  description = "Development vpc instance tenency"
  type        = string
  #default = "default"
}

# dev subnet 1 cidr block
variable "Dev-subnet-1-cidrblock" {
  description = "Development subnet 1 cidr block"
  type        = string
  #default = "10.0.1.0/24"
}

# dev subnet 1 availability zone
variable "Dev-subnet-1-availability-zone" {
  description = "Development subnet 1 availability zone"
  type        = string
  #default = "us-east-2a"
}

# dev subnet 2 cidr block
variable "Dev-subnet-2-cidrblock" {
  description = "Development subnet 2 cidr block"
  type        = string
  #default = "10.0.2.0/24"
}

# dev subnet 2 availability zone
variable "Dev-subnet-2-availability-zone" {
  description = "Development subnet 2 availability zone"
  type        = string
  #default = "us-east-2b"
}