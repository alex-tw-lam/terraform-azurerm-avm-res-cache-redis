variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "name" {
  type = string
}

# AMR encodes the entire size in sku_name (e.g. Balanced_B0/B1/B2).
variable "sku_name" {
  type = string
}
