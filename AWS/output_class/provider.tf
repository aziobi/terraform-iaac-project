provider "aws" {
    region = "us-east-1" 
    version = "2.59"
}


// Create Key

resource "aws_key_pair" "us-east-1-key-output" {
  key_name   = "ibrahims_bastion_output"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}


// Create instance
resource "aws_instance" "web-output" {
    ami = "ami-0323c3dd2da7fb37d"
    instance_type = "t2.micro"
  
}



// Create Sec Group


// Create Route53


// Outputs everything

output "key_pair" {
  value = "${aws_key_pair.us-east-1-key-output.key_name}"  
}

output "instance_id" {
    value = "${aws_instance.web-output.id}"
}


output "instance_arn" {
    value = "${aws_instance.web-output.arn}"
}

output "my_message" {
    value = "whats up bro"
}