terraform {
  required_version = ">= 1.10, < 2.0"
  required_providers {
    azurerm = { source = "hashicorp/azurerm", version = ">= 4.0, < 5.0" }
  }
  backend "kubernetes" {
    in_cluster_config = true
    namespace         = "crossplane-system"
  }
}
