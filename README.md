# paclabs-terraform

# The paclabs-terraform repo holds all of the terraform scripts we've created to put the PacNW Labs infrastructure under terraform control.
# It also includes the terraform binary for ease of use.

# Currently, there's also an example terraform script for learning the application.

# To use these scripts, create a "credentials.tf" file (or any name you like) with your credentials in this format:

#variable "access_key" {}
#variable "secret_key" {}
#variable "region" {
#  default = "us-east-1"
#}

# Then, these variables can be used in ANY .tf files in a given folder, with the following syntax:

#provider "aws" {
#  access_key = "${var.access_key}"
#  secret_key = "${var.secret_key}"
#  region     = "${var.region}"
#}