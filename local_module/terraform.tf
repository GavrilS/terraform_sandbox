terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = ">= 2.5.0"
    }
    template = {
      source  = "hashicorp/template"
      version = ">= 2.2.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.12.1"
    }
  }
}
