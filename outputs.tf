output "lightsail_domains_id" {
  description = "Map of id values across all lightsail_domains, keyed the same as var.lightsail_domains"
  value       = { for k, v in aws_lightsail_domain.lightsail_domains : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lightsail_domains_arn" {
  description = "Map of arn values across all lightsail_domains, keyed the same as var.lightsail_domains"
  value       = { for k, v in aws_lightsail_domain.lightsail_domains : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "lightsail_domains_domain_name" {
  description = "Map of domain_name values across all lightsail_domains, keyed the same as var.lightsail_domains"
  value       = { for k, v in aws_lightsail_domain.lightsail_domains : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}
output "lightsail_domains_region" {
  description = "Map of region values across all lightsail_domains, keyed the same as var.lightsail_domains"
  value       = { for k, v in aws_lightsail_domain.lightsail_domains : k => v.region if v.region != null && length(v.region) > 0 }
}

