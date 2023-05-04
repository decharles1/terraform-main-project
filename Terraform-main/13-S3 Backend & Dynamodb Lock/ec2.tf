# Below is the resource block which creates EC2 Instance
resource "aws_instance" "test" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"
  tags = {
    Name = "kamau"
  }
}
