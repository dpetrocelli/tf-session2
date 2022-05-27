# AWS Region: North of Virginia
variable "aws_region" {
  type    = string
  default = "us-east-1"
}

# SSH Key-Pair 
variable "key_name" {
  type    = string
  default = "ec2key"
}

#EC2 Instance type
variable "instance_type" {
  type = map(string)
  default = {
    "type1" = "t2.small",
    "type2" = "t2.medium",
    "type3" = "t2.large",
    "type4" = "t2.xlarge",
    "type5" = "t2.2xlarge"
  }
}

# Main VPC
variable "aws-controltower-VPC" {
  type    = string
  default = "vpc-068a3f7886e8ad90c"
}

# Main Subnet
variable "aws-controltower-PrivateSubnet1A" {
  type    = string
  default = "subnet-00806f63e63b91a70"
}

### Tags Variables ###

variable "CH_EC2tag" {
  type = map(string)
  default = {
    service     = "Prod",
    environment = "desa"
    owner       = "Alan"
  }
}

variable "tag_project" {
  type    = string
  default = "CH_Demo"
}