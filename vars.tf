variable "amis" {
  default = {
    "us-east-1-ubuntu18" = "ami-013f17f36f8b1fefb"
    
  }
}

variable "instance_type" {
  default = {
    "micro" = "t2.micro"
  }
}
