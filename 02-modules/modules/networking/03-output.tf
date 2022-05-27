output "vpc_id" {
  value       = aws_vpc.poc_vpc.id
  description = "VPC ID"
}

output "cidr_block" {
  value       = aws_vpc.poc_vpc.cidr_block
  description = "VPC ID"
}


output "public_subnets" {
  value       = values(aws_subnet.poc_public)[*].id
  description = "Public Subnets ID"
}

