terraform {
  backend "s3" {
    bucket         = "devopsb32tfstate"
    key            = "devopsb32.tfstate"
    region         = "us-east-1"
    dynamodb_table = "devopsb32-terraform-locking"
    encrypt        = true
  }
}