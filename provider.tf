terraform {
  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.52.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "3.11.0"
    }
  }
}

provider "hcp" {
}
