provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "maquina_wp" {
  ami = "${var.amis["us-east-1-ubuntu18"]}"
  instance_type = "${var.instance_type.micro}"
  key_name = "terraform-key"
  tags = {
    Name = "InstanceEc2-AWS"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso_total.id}"]
}


# para liberar a internet interna da maquina, colocar regra do outbound "Outbound rules" como "All traffic"
# ssh -i ~/.ssh/terraform-aws ubuntu@ec2-54-234-131-240.compute-1.amazonaws.com 
# conferir 
