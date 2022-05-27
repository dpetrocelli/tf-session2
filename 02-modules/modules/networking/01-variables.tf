# TGW ID 
variable "tgw_id" {
  type    = string
  default = "tgw-02c77add04aad44d4"
}

variable vpcEndpoint {
  type = list(string)
  default = ["sts", "ec2msg", "logs", "ecr-dkr", "ecr-api", "ec2", "ssm", "ssmmsg", "s3", ]
}
# VPC  cidr block
variable "vpc_cidr" {
  type    = string
  default = "10.48.0.0/16"
}
# -------------------------------------
# SUBNET Definition variable
# ------------------------------------
#Use for subnet: tags = merge(var.project-tags, { Name = "${var.resource-name-tag}-${each.value.name}" }, )
variable "PublicSubnet-List" {
  type = list(object({
    name    = string
    az      = number
    newbits = number
    netnum  = number
  }))
  default = [
    {
      name    = "Public-0"
      az      = 0
      newbits = 8
      netnum  = 10
    },
    {
      name    = "Public-2"
      az      = 1
      newbits = 8
      netnum  = 12
    },
  ]
}

variable "PrivateSubnet-List" {
  type = list(object({
    name    = string
    az      = number
    newbits = number
    netnum  = number
  }))
  default = [
    {
      name    = "Private-0"
      az      = 0
      newbits = 8
      netnum  = 20
    },
    {
      name    = "Private-1"
      az      = 1
      newbits = 8
      netnum  = 21
    },
  ]
}

variable "PrivateSubnetdb-List" {
  type = list(object({
    name    = string
    az      = number
    newbits = number
    netnum  = number
  }))
  default = [
    {
      name    = "Privatebd-0"
      az      = 0
      newbits = 8
      netnum  = 15
    },
    {
      name    = "Privatebd-1"
      az      = 1
      newbits = 8
      netnum  = 16
    },
  ]
}

# Values come from variable.tf
variable "project-tags" {}
variable "resource-name-tag" {}
variable "region" {}
