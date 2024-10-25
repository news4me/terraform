terraform { 
  cloud { 
    organization = "Philippe_Organisation" 
    workspaces { 
      name = "terraform" 
    } 
  } 
}

# Déclarer la variable "bucket_name"
variable "bucket_name" {
  type        = string
  description = "philippe9239"
}

variable "aws_secret_access_key" {}
variable "aws_access_key_id" {}

# Fournisseur AWS avec les identifiants directement dans le code
provider "aws" {
  region     = "eu-west-1"
  access_key = var.aws_secret_access_key
  secret_key = var.aws_secret_access_key
}

# Appel du module S3 Bucket depuis Terraform Registry
module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.2.1"
  # Utilisation de la variable définie dans TFC
  bucket = var.bucket_name
  tags = {
    Name        = "MySimpleBucket"
    Environment = "dev"
  }
}
