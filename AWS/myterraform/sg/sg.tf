resource "aws_instance" "ec2" {
  instance_type = "t2.micro"
  ami = "ami-0323c3dd2da7fb37d"

  tags = {
    name = "sg_ec2"
  }
}

resource "aws_security_group" "web_traffic" {
  name        = "allow HTTPS"
  

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }



}