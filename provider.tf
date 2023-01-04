terraform {
  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.52.0"
    }
  }
}

provider "hcp" {
}
