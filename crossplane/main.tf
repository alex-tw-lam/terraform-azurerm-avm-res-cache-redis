# Azure Managed Redis (AMR). Azure is retiring the classic azurerm_redis_cache,
# so we use the native azurerm_managed_redis resource directly (no AVM module
# exists for AMR yet). Note: AMR exposes only id + hostname (and the default
# database port); it does NOT export access keys as attributes — access keys are
# retrieved via a separate listKeys API and access-key auth is off by default
# (Entra ID / AAD). The OSB binding therefore carries hostname + port.
resource "azurerm_managed_redis" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku_name            = var.sku_name

  default_database {
    # all defaults: TLS client protocol, OSS cluster, access-key auth disabled
  }
}
