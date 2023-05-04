# Below is the resource block which creates EC2 Instance
resource "aws_instance" "test" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  tags = {
    Name = "TerraformEC2"
  }
}


# Below is the provider which helps in connecting with AWS Account
provider "aws" {
  #region = "us-east-1"
  #access_key = ""
  #secret_key = ""
}
