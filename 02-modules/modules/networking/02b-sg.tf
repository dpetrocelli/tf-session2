resource "aws_security_group" "Endproint_SG" {
  name        = "Endproint-SG"
  description = "Endproint SG"
  vpc_id      = aws_vpc.poc_vpc.id
  ingress {
    description = "desktop02"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    #cidr_blocks = ["0.0.0.0/0"]
    cidr_blocks = [aws_vpc.poc_vpc.cidr_block]
    
    
  }
  egress {
    description      = "Allow Internet Out"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = merge(var.project-tags, { Name = "${var.resource-name-tag}-SG" }, )
}