/* terraform {  
  required_providers {    
    aws = {      
      source  = "hashicorp/aws"      
      version = "~> 3.27"    
    }  
  }
  required_version = ">= 0.14.9"
}
 
provider "aws" {  
  profile = "ar-itau"  
  region  = "eu-west-2"
} 
*/
/* provider "google" {}
provider "rabbitmq" {}
provider "cloudflare" {}
provider "github" {}
provider "datadog" {}
provider "newrelic" {}
provider "digitalocean" {}
provider "fastly" {}
provider "heroku" {}
provider "linode" {}
provider "ns1" {}
provider "openstack" {}
provider "vultr" {}
provider "kubernetes" {} */
provider "aws" {}
# terraformer plan aws --resources=s3