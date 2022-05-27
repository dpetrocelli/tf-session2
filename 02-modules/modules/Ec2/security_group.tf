resource "aws_security_group" "CMF_Demo" {
  name        = "CMF_Demo"
  description = "SSH"
  vpc_id      = var.aws-controltower-VPC

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description      = "Allow Internet Out"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(var.CH_EC2tag, { Name = "${var.tag_project}-SG" }, )
}