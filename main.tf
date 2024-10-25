terraform { 
  cloud { 
    organization = "Philippe_Organisation" 
    workspaces { 
      name = "terraform" 
    } 
  } 
}

# Fournisseur AWS avec les identifiants directement dans le code
provider "aws" {
  region     = "eu-west-1"
  access_key = "AKIAQWTVESICHEQ6FP4G"                     # Remplace par votre clé d'accès
  secret_key = "Q2Fgwar8G8g+npX27z1VS/lAKwxL6erH6uVBech8" # Remplace par votre clé secrète
}


# Créer un bucket S3 simple sans utiliser `acl`
resource "aws_s3_bucket" "my_bucket" {
  bucket = "philippe9233" # Remplace par un nom unique (your_name-5-digits)
  tags = {
    Name        = "MySimpleBucket"
    Environment = "dev"
  }
}	
