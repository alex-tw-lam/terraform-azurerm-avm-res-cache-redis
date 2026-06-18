module "redis" {
  source  = "Azure/avm-res-cache-redis/azurerm"
  version = "0.4.0"

  name                 = var.name
  resource_group_name  = var.resource_group_name
  location             = var.location
  sku_name             = var.sku_name
  capacity             = var.capacity
  minimum_tls_version  = var.minimum_tls_version
  enable_telemetry     = false

  # Zones are Premium-only; Basic/Standard must omit them.
  zones                = var.sku_name == "Premium" ? ["1", "2", "3"] : []

  # Premium-only VNet injection; null is ignored for Basic/Standard.
  subnet_resource_id           = var.subnet_id
  public_network_access_enabled = var.subnet_id == null ? true : false
}
