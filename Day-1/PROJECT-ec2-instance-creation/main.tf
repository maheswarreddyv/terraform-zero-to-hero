provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0c7af5fe939f2677f"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id     = "subnet-08a5509f27384dc65"
    key_name      = "aws"
    tags          = {
        Name = "test-spot"
        }
}
