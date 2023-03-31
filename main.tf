# Read in the VPC CIDR block and subnet CIDR blocks from a configuration file
#locals {
#  config = jsondecode(file("config.json"))

#  vpc_cidr_block = local.config.vpc_cidr_block
#  public_subnet_cidr_block = local.config.public_subnet_cidr_block
#  private_subnet_cidr_block = local.config.private_subnet_cidr_block
#}

# Set the region to deploy to
provider "aws" {
  region = "us-east-1"
}
################################################################################
#
################################################################################
#Create MIRA VPC 
module "vpc" {
  source = "./vpc"
  vpc_name = "mira_vpc"
  vpc_cidr_block="192.168.0.0/16"
}

################################################################################
# Instance
# Create the EC2 instance and associate it with the Public  subnet
################################################################################
module "instance" {
  source = "./instance"
  instance_name = "staging"
  #vpc_name = "mira_vpc"
  ec2_count     = 1
  ami_id        = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro" 
 # user_data         = data.template_cloudinit_config.config.rendered
 depends_on = [
 data.template_cloudinit_config.config
 ]
  subnet_id = module.public_subnet.subnet_id
  vpc_id = module.vpc.id
}

data "aws_availability_zones" "available" {}
###################################################################################
#public_subnet
#
#
###################################################################################
module "public_subnet" {
  source = "./subnet"
  subnet_name = "mira_public_subnet"
  vpc_id = module.vpc.id
  cidr_block="192.168.1.0/24"
  availability_zone = "${data.aws_availability_zones.available.names[0]}"
}
###################################################################################
#Private_subnet
#
#
###################################################################################
module "private_subnet" {
  source = "./subnet"
  subnet_name = "mira_private_subnet"
  vpc_id = module.vpc.id
  cidr_block="192.168.2.0/24"
  availability_zone = "${data.aws_availability_zones.available.names[1]}"
}
###################################################################################
#Internet GateWay
#Created by Bis Tripathy v1.1.1.0 date:3/4/2023
#Modified by John v1.1.1.0 date:3/7/2023
###################################################################################
# Create the internet gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = module.vpc.id
  tags = {
    Name = "mira_igw"
  }
}
###################################################################################
#Create the route table and plug with Internet Gateway 
#Created by Bis Tripathy v1.1.1.0 date:3/4/2023
###################################################################################
resource "aws_route_table" "public_route_table" {
  vpc_id = module.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}
###################################################################################
#Create the route table and associate it with the public subnet
#Created by Bis Tripathy v1.1.1.0 date:3/7/2023
###################################################################################
resource "aws_route_table_association" "public_subnet_association" {
  subnet_id = module.public_subnet.subnet_id
  route_table_id = aws_route_table.public_route_table.id
}
###################################################################################
#Create the route table and associate it with the  sunically prvate subnet 
#assoicated with the public Route Tables - Capstone Specific as NO ALB or ELB
#Created by Bis Tripathy v1.1.1.0 date:3/7/2023
###################################################################################
resource "aws_route_table_association" "private_subnet_association" {
  subnet_id = module.private_subnet.subnet_id
  route_table_id = aws_route_table.public_route_table.id
}
