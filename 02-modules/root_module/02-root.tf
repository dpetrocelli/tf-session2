# documentation:
# https://es.sensedia.com/post/how-create-cluster-kubernetes-terraform-aws-eks
# https://github.com/Sensedia/open-tools
# https://medium.com/prodopsio/terraform-aws-dynamic-subnets-455619dd1977
# https://www.linkedin.com/pulse/automate-dynamic-infrastructure-over-aws-using-terraform-sujagi-verma/

## NETWORKING
# https://blog.gruntwork.io/terraform-tips-tricks-loops-if-statements-and-gotchas-f739bbae55f9
# https://medium.com/@kuldeep.rajpurohit/vpc-with-public-and-private-subnet-nat-on-aws-using-terraform-85a18d17c95e
# https://harshitdawar.medium.com/launching-a-vpc-with-public-private-subnet-nat-gateway-in-aws-using-terraform-99950c671ce9
#https://citizix.com/terraform-aws-vpc-with-public-and-private-subnets-with-nat/

# NOSE
## https://github.com/Derek-Ashmore/terraform-samples/blob/master/terraform-modules/aws-vpc-routes-acls/dataSources.tf
# ---- cert ROOT/main.tf -----

module "networking" {
  source            = "../modules/networking"
  region            = var.aws_region["virginia"]
  project-tags      = var.project-tags
  resource-name-tag = "nw-"
}

module "ec2" {
  source            = "../modules/ec2"
  subnet_id            = module.networking.public_subnets[0]
  vpc_id = module.networking.vpc_id
} 


# module "instance" {
#   source            = "../modules/instance"
#   environment       = "dev"
#   ec2_count         = 1
#   project_name      = "instance"
#   vpc_id            = module.networking.vpc_id
#   private_subnet  = module.networking.private_subnets[0]
#   public_subnet  = module.networking.public_subnets[0]
#   instance_type     = "t2.micro"
#   aws_key_name      = "prueba_key"
#   monitoring        = true
#   allowed_ip_ranges = ["0.0.0.0/0", module.networking.cidr_block]
#   tags              = var.project-tags
# } 

/* module "S3" {
  source            = "../modules/S3"
  # Provider for Source Bucket
  providers = {
    aws.src = aws.source
    aws.dst = aws.destination
   }
  aws_region        = var.aws_region["virginia"]
  project-tags      = var.project-tags
  resource-name-tag = var.resource-name-tag
} */

/* module "instance" {
  source            = "../instance_module"
  environment       = var.environment
  ec2_count         = var.ec2_count
  project_name      = var.project_name
  vpc_id            = module.networking.eks_vpc_id
  public_subnet_id  = module.networking.private_subnets[0]
  instance_type     = var.instance_type
  aws_key_name      = var.aws_key_name
  monitoring        = true
  allowed_ip_ranges = ["0.0.0.0/32", module.networking.vpc_cidr_block]
  tags              = var.tags
} */

/* module "eks" {
  source                  = "../eks_module"
  vpc_id                  = module.networking.eks_vpc_id
  eks_cluster_subnets_ids = module.networking.public_subnets


} */


