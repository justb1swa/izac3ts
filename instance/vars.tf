variable "ec2_count" {
  default = "1"
}

variable "ami_id" {}

variable "tenancy" {
  default = "dedicated"
}
variable "instance_name" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "vpc_id" {}
#variable "user_data_file" {
#   type    = string
#}
#variable "user_data" {
#  type    = string
#  default = ""
#}
variable "public_keys" {
  type    = list(string)
  default = ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0zHZqeCyz/W86cnaAhHKEuN8XuhDDFwmIq7Bw1YLfa9lCdNDVdMneg5+01hCODh7PHIE2vqdhzuX2Iu4qjzlEDPy4qK+5LCAzEInFTOYdkJfqwV255UHAUz69u9Mi+sdhIYPqYPMBkG8mNGhm3cv6XDNRYhQ9+Dj63K4hpXPzJczuzZQhAIv7/v6bGkMNmYtxzJc3mlDDSIaYqzMIcdnJwKzAgyfUU8deuMGmj3PNeF6zpnRmgyuFxNkU2X1QD+fsmmLAkaQK43NlQBLZ8JFm8guErU69NVuTgAXZUZnbjZaBm3wBe1Ay7qsu4dm4vfJem2CyuFU1qMBBEdx06QJB biskeypairawscmu","ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCy1P+JVI1/OfQx0rRp8sm37rxOm6U7d9Jl6w8+YIpF+kJpKR/gvK1O45Jpp5pZuCHn6DOhtuRdLZmhHDO0yK3G6gUinhv6URfbKtR92q2OnE6xIOVoxKVK33cZ1nvV56zjhjCa/Mmo1K+kXvsxT6y0KGitnd/eshvw6TTmhHDwVlicXwr4cu+gWMPncmQ+qJDeu/oAtx/R8WMof/seN778YLb7E4l1ihYfX9U3svNysLnBlfqUlE0K4gIYSXmtAVZ0r26WRdXpCJx1UKcEgRzorKe5rfDc4ZOJ/qdkrO3m8MNR1WBVZQGocgXJLH/l/hzbA9veQcrU2oOi6/2t24PV cmucapstonebis"]
}
