terraform { 
  cloud { 
    organization = "Philippe_Organisation" 
    workspaces { 
      name = "Philippe_Workspace_01" 
    } 
  } 
}

# Fournisseur AWS avec les identifiants directement dans le code
provider "aws" {
  region     = "eu-west-1"
  access_key = "AKIAQWTVESICABTFCGF7"                     # Remplace par votre clé d'accès
  secret_key = "iHTbF8qA6mjGYQdGrEtYgr+yYlYJHu3VdttCE52W" # Remplace par votre clé secrète
}

# Créer un bucket S3 simple sans utiliser `acl`
resource "aws_s3_bucket" "my_bucket" {
  bucket = "philippe922801" # Remplace par un nom unique (your_name-5-digits)
  tags = {
    Name        = "MySimpleBucket"
    Environment = "dev"
  }
}	
