# Below is Backend block
terraform {
  backend "s3" {
    bucket = "longoi"
    key = "project1/backend.tfstate"
    region = "us-east-1"
    profile = "default"
    dynamodb_table = "imm-tf-state-tb"
  }
}