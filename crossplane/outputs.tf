output "resource_id" {
  value = module.redis.resource_id
}

output "name" {
  value = module.redis.name
}

output "hostname" {
  value     = module.redis.resource.hostname
  sensitive = true
}

output "ssl_port" {
  value     = module.redis.resource.ssl_port
  sensitive = true
}

output "primary_access_key" {
  value     = module.redis.resource.primary_access_key
  sensitive = true
}

output "primary_connection_string" {
  value     = module.redis.resource.primary_connection_string
  sensitive = true
}
