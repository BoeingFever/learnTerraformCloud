provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-02f3416038bdb17fb"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
