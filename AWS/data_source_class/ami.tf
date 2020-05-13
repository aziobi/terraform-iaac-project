provider "aws" {
  region  = "us-east-1"
  version = "2.59"
}
data "aws_ami" "centos" {
  most_recent = true
  owners      = ["679593333241"]
  filter {
    name   = "state"
    values = ["available"]
  }
  filter {
    name   = "name"
    values = ["CentOS Linux 7 x86_64 HVM EBS *"]
  }
}
resource "aws_instance" "centos" {
  ami           = "${data.aws_ami.centos.id}"
  instance_type = "t2.micro"
}
output "centos" {
  value = "${data.aws_ami.centos.id}"
}