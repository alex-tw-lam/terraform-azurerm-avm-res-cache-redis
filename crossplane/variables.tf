variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "name" {
  type = string
}

variable "sku_name" {
  type = string
}

variable "capacity" {
  type = number
}

variable "minimum_tls_version" {
  type = string
}

variable "subnet_id" {
  type    = string
  default = null
}
