# Define a provider with access credentials

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

/*
# Provisions an EC2 instance with Ubuntu 16.04 LTS
resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
*/

/*
# Uncomment to define a provisioner for IP address
  provisioner "local-exec" {
    command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
  }
*/

# }

# Replace the resource above with the following to update to 16.10:

resource "aws_instance" "example" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
}

/*
# Include this code to define output variable to expose public IP:

output "ip" {
  value = "${aws_instance.example.public_ip}"
}
*/

