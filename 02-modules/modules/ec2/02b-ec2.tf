#Ref: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami
data "aws_ami" "linux2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}
# EC2 Deploy
resource "aws_instance" "CMF_EC2" {
  ami                    = data.aws_ami.linux2.id
  instance_type          = var.instance_type["type1"]
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.CMF_Demo.id]
  tags                   = merge(var.CH_EC2tag, { Name = "${var.tag_project}-EC2" }, )

  root_block_device {
    volume_size           = 120
    volume_type           = "gp3"
    delete_on_termination = true
    tags                  = merge(var.CH_EC2tag, { Name = "${var.tag_project}-EBS" }, )
  }

}