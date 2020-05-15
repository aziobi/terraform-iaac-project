resource "aws_instance" "ec2" {
  instance_type = "t2.micro"
  ami = "ami-0323c3dd2da7fb37d"

  tags = {
    name = "public_ip"
  }
}

resource "aws_eip" "elastic_ip" {
    instance = "${aws_instance.ec2.id}"
  
}

output "public_ip" {
     value = "${aws_eip.elastic_ip.public_ip}"
}
