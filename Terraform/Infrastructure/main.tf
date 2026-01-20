terraform {
  backend "s3" {
    encrypt = true
  }
}

resource "aws_instance" "app_server" {
  ami           = "ami-0b8d527345fdace59"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform_INSTANCE"
  }
}

