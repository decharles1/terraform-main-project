resource "aws_instance" "webb" {
  ami  = "ami-08c40ec9ead489470"
  instance_type = "t2,micro"
  subnet_id = ""
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data = file("./scripts/setup.sh")
  am_instance_profile = aws_iam_instance_profile.test_profile.name

tags = {
  Name = "HelloWorld"
}
}

#security group for ec2
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
resource "aws_iam_instance_profile" "test_profile" {
  name = "test_profile"
  role = aws_iam_role.role.name
}

#web server ec2
resource "aws_instance" "web" {
  ami  = "ami-08c40ec9ead489470"
  instance_type = "t2,micro"
  subnet_id = ""
  vpc_security_group_ids = []

tags = {
  Name = "HelloWorld"
}
}