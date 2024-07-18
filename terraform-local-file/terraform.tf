terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "1.4.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "Kodekloud-terraform-state-bucket01"
    key = "finance/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "state-locking"
  }
}
