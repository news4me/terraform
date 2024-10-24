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
  access_key = "AKIAQWTVESICMJLB2CPB"                     # Remplace par votre clé d'accès
  secret_key = "PBFCcBBakdKq39lHe8yGOzzbk11w15wlM7uZ04SS" # Remplace par votre clé secrète
}


# Créer un bucket S3 simple sans utiliser `acl`
resource "aws_s3_bucket" "my_bucket" {
  bucket = "philippe9230" # Remplace par un nom unique (your_name-5-digits)
  tags = {
    Name        = "MySimpleBucket"
    Environment = "dev"
  }
}	
