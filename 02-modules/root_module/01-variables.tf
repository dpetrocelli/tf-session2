variable "aws_minimum_version" {
  description = "AWS provider minimum version"
  type        = string
  default     = "~> 3.0"
}

##AWS Region
#Use: var.aws_region["source"]
variable "aws_region" {
  type = map(string)
  default = {
    "virginia" = "us-east-1",
    "oregon"   = "us-west-2"
  }
}

variable "profile" {
  description = "Profile of AWS credential."
  type        = string
  default     = "ar-itau"

}

variable "vpc_id" {
  type = string
  default = "vpc-068a3f7886e8ad90c"
}

variable "vpc_conditions" {
  type = string
  default = null
}

variable "deployNetworking" {
  type = bool
  default = true
}

variable "deployeks" {
  type = bool
  default = true
}

# variable "address_allowed" {
#   description = "My Public ip?"
#   type        = string
#   default     = "0.0.0.0/0"
# }

# variable "dns_config" {
#   description = "DNS support and hostname configuration"
#   type = object({
#     enable_dns_support   = bool
#     enable_dns_hostnames = bool
#   })

#   default = {
#     enable_dns_support   = true
#     enable_dns_hostnames = true
#   }
# }


# # General
# variable "tags" {
#   description = "Maps of tags."
#   type        = map(any)
#   default     = {}
# }

# variable "environment" {
#   description = "Name Terraform workspace."
#   type        = string
#   default     = "dev"
# }

# variable "aws_key_name" {
#   description = "Key pair RSA name."
#   type        = string
#   default     = "id_pub.rsa"
# }

# variable "aws_public_key_path" {
#   description = "PATH to public key in filesystem local."
#   type        = string
#   default     = ""
# }

# variable "bucket_name" {
#   description = "Bucket name for storage Terraform tfstate remote."
#   type        = string
#   default     = "tfstate-bucket"
# }

# variable "dynamodb_table_name" {
#   description = "DynamoDB Table name for lock Terraform tfstate remote."
#   type        = string
#   default     = "dynamo-tfstate"
# }

# variable "vpc_cidr_block" {
#   description = "CIDR block to vpc1."
#   type        = string
#   default     = "10.0.0.0/16"
# }

# variable "public_subnet_cidr" {
#   description = "Public CIDRs block to subnet public1."
#   type        = list(string)
#   default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
# }

# variable "private_subnet_cidr" {
#   description = "Private CIDRs block to subnet public1."
#   type        = list(string)
#   default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
# }

# variable "project_name" {
#   description = "project name"
#   type        = string
#   default     = "EKS_basement"
# }

# variable "ec2_count" {
#   description = "amount of ec2 to be created"
#   type        = number
#   default     = 1
# }

# variable "instance_type" {
#   description = "instance type"
#   type        = string
#   default     = "t2.micro"
# }

# # EKS Variables
# # Provider config
# variable "credentials_file" {
#   description = "PATH to credentials file"
#   default     = "~/.aws/credentials"
# }



# # # Networking
# # variable "subnets" {
# #   description = "List of IDs subnets public and/or private."
# #   type        = list(string)
# # }

# # variable "vpc_id" {
# #   description = "ID of VPC."
# # }

# # --------- EKS ---------

# variable "cluster_name" {
#   description = "Cluster EKS name."
#   type        = string
#   default     = "test"
# }

# variable "cluster_version" {
#   description = "Kubernetes version supported by EKS. \n Reference: https://docs.aws.amazon.com/eks/latest/userguide/kubernetes-versions.html"
#   default     = "1.20"
# }

# variable "launch_template_name" {
#   description = "Name of template worker group."
#   default     = "lt_ec2_for_eks"
# }

# variable "override_instance_types" {
#   description = "Type instances for nodes workers. Reference: https://aws.amazon.com/ec2/pricing/on-demand/"
#   type        = list(string)
#   default     = ["t3.medium", "t3.micro"]
# }

# variable "on_demand_percentage_above_base_capacity" {
#   description = "On demand percentage above base capacity."
#   type        = number
#   default     = 50
# }

# variable "autoscaling_enabled" {
#   description = "Enable ou disable autoscaling."
#   type        = bool
#   default     = true
# }

# variable "asg_min_size" {
#   description = "Number minimal of nodes workers in cluster EKS."
#   type        = number
#   default     = 0
# }

# variable "asg_max_size" {
#   description = "Number maximal of nodes workers in cluster EKS."
#   type        = number
#   default     = 10
# }

# variable "asg_desired_capacity" {
#   description = "Number desired of nodes workers in cluster EKS."
#   type        = number
#   default     = 1

# }

# #variable "kubelet_extra_args" {}

# # FOR private ACCESS
# variable "public_ip" {
#   description = "Enable ou disable public IP in cluster EKS."
#   type        = bool
#   default     = false
# }

# variable "cluster_endpoint_private_access" {
#   description = "Indicates whether or not the Amazon EKS private API server endpoint is enabled."
#   type        = bool
#   default     = true
# }

# variable "cluster_endpoint_private_access_cidrs" {
#   description = "List of CIDR blocks which can access the Amazon EKS private API server endpoint, when public access is disabled"
#   type        = list(string)
#   default     = ["0.0.0.0/0"]
# }

# # FOR PUBLIC ACCESS
# variable "cluster_endpoint_public_access" {
#   description = "Indicates whether or not the Amazon EKS public API server endpoint is enabled."
#   type        = bool
#   default     = true
# }

# variable "cluster_endpoint_public_access_cidrs" {
#   description = "List of CIDR blocks which can access the Amazon EKS public API server endpoint."
#   type        = list(string)
#   default     = ["0.0.0.0/0"]
# }

# variable "suspended_processes" {
#   description = "Cluster EKS name."
# }

# variable "root_volume_size" {
#   description = "Size of disk in nodes of cluster EKS."
#   type        = number
#   default     = 20
# }

# variable "cluster_enabled_log_types" {
#   description = "A list of the desired control plane logging to enable.  \n For more information, see Amazon EKS Control Plane Logging documentation (https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html)"
#   type        = list(string)
#   default     = ["api", "audit"]
# }

# variable "kubelet_extra_args" {
#   description = "Extra arguments for EKS."
#   type        = string
#   default     = "--node-labels=node.kubernetes.io/lifecycle=spot"
# }

# variable "cluster_log_retention_in_days" {
#   description = "Number of days to retain log events."
#   type        = number
#   default     = "7"
# }

# variable "workers_additional_policies" {
#   description = "Additional policies to be added to workers"
#   type        = list(string)
#   default     = []
# }

# variable "worker_additional_security_group_ids" {
#   description = "A list of additional security group ids to attach to worker instances."
#   type        = list(string)
#   default     = []
# }

# variable "map_roles" {
#   description = "Additional IAM roles to add to the aws-auth configmap.  \n See https://github.com/terraform-aws-modules/terraform-aws-eks/blob/master/examples/basic/variables.tf for example format."
#   type = list(object({
#     rolearn  = string
#     username = string
#     groups   = list(string)
#   }))
#   default = []
# }

# variable "map_users" {
#   description = "Additional IAM users to add to the aws-auth configmap.  \n See https://github.com/terraform-aws-modules/terraform-aws-eks/blob/master/examples/basic/variables.tf for example format."
#   type = list(object({
#     userarn  = string
#     username = string
#     groups   = list(string)
#   }))
#   default = []
# }

# # Kubernetes manifests
# variable "cw_retention_in_days" {
#   description = "Fluentd retention in days."
#   type        = number
#   default     = 7
# }

# # General
# variable "eks_tags" {
#   description = "Maps of tags."
#   type        = map(any)
#   default     = {}
# }


# Networking Tags / Definitions

### Tags Variables ###
#Use: tags = merge(var.project-tags, { Name = "${var.resource-name-tag}-place-holder" }, )
variable "project-tags" {
  type = map(string)
  default = {
    service     = "VPC",
    environment = "POC"
    DeployedBy  = "ARQ-DEVOPS-CH"
  }
}


