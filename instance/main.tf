################################################################################
# Instance
# Create the EC2 instance and associate it with the private subnet
#  Created by Bis Tripathy v1.1.1.0 date:3/4/2023
# Modified by John Carrol v.1.1.1.0 Bug#102 date:3/12/2023
################################################################################
#locals {
#    user_data_file = "myinstall.sh"
#}
resource "aws_instance" "staging" {
 ami                       = var.ami_id
 instance_type             = var.instance_type
 tags = {
   Name = var.instance_name
 }
 key_name="biskeypairawscmu"
 #user_data     = base64decode(file(var.user_data_file)) # Encode user data script in base64
 #user_data = var.user_data_file
 #user_data = base64encode(file(var.user_data_file)) # Encode user data script in base64
 #user_data     = base64encode(file("/home/ubuntu/izac3ts/scripts/myinstall.sh"))
 # Giving reference of security group
 vpc_security_group_ids = [ aws_security_group.sg-staging.id ]
 subnet_id     = var.subnet_id
 associate_public_ip_address = true
 user_data         = data.template_cloudinit_config.config.rendered
 depends_on = [
  data.template_cloudinit_config.config
 ]
#user_data     = base64encode(file("/home/ubuntu/izac3ts/scripts/myinstall.sh"))
}
################################################################################
#Add Security Group
# Create the EC2 instance and associate it with the private subnet
#  Created by Bis Tripathy v1.1.1.0 date:3/4/2023
# Modified by Mukesh Singh Bhaati  v.1.1.1.0 Bug#102 date:3/12/2023
################################################################################
resource "aws_security_group" "sg-staging" {
name = "security-group-staging"
description = "Allow HTTP and SSH traffic for Staging  server"
vpc_id=var.vpc_id
ingress {
from_port = 80
to_port = 80
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
ingress {
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
ingress {
from_port = 443
to_port = 443
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
ingress {
from_port = 8080
to_port = 8080
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
egress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
}
}
