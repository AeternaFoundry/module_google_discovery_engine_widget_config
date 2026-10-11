output "discovery_engine_widget_configs_id" {
  description = "Map of id values across all discovery_engine_widget_configs, keyed the same as var.discovery_engine_widget_configs except keys with no id are omitted"
  value       = { for k, v in google_discovery_engine_widget_config.discovery_engine_widget_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "discovery_engine_widget_configs_access_settings" {
  description = "Map of access_settings values across all discovery_engine_widget_configs, keyed the same as var.discovery_engine_widget_configs except keys with no access_settings are omitted"
  value       = { for k, v in google_discovery_engine_widget_config.discovery_engine_widget_configs : k => one(v.access_settings) if v.access_settings != null && length(v.access_settings) > 0 }
}
output "discovery_engine_widget_configs_collection_id" {
  description = "Map of collection_id values across all discovery_engine_widget_configs, keyed the same as var.discovery_engine_widget_configs except keys with no collection_id are omitted"
  value       = { for k, v in google_discovery_engine_widget_config.discovery_engine_widget_configs : k => v.collection_id if v.collection_id != null && length(v.collection_id) > 0 }
}
output "discovery_engine_widget_configs_config_id" {
  description = "Map of config_id values across all discovery_engine_widget_configs, keyed the same as var.discovery_engine_widget_configs except keys with no config_id are omitted"
  value       = { for k, v in google_discovery_engine_widget_config.discovery_engine_widget_configs : k => v.config_id if v.config_id != null && length(v.config_id) > 0 }
}
output "discovery_engine_widget_configs_engine_id" {
  description = "Map of engine_id values across all discovery_engine_widget_configs, keyed the same as var.discovery_engine_widget_configs except keys with no engine_id are omitted"
  value       = { for k, v in google_discovery_engine_widget_config.discovery_engine_widget_configs : k => v.engine_id if v.engine_id != null && length(v.engine_id) > 0 }
}
output "discovery_engine_widget_configs_homepage_setting" {
  description = "Map of homepage_setting values across all discovery_engine_widget_configs, keyed the same as var.discovery_engine_widget_configs except keys with no homepage_setting are omitted"
  value       = { for k, v in google_discovery_engine_widget_config.discovery_engine_widget_configs : k => one(v.homepage_setting) if v.homepage_setting != null && length(v.homepage_setting) > 0 }
}
output "discovery_engine_widget_configs_location" {
  description = "Map of location values across all discovery_engine_widget_configs, keyed the same as var.discovery_engine_widget_configs except keys with no location are omitted"
  value       = { for k, v in google_discovery_engine_widget_config.discovery_engine_widget_configs : k => v.location if v.location != null && length(v.location) > 0 }
}
output "discovery_engine_widget_configs_name" {
  description = "Map of name values across all discovery_engine_widget_configs, keyed the same as var.discovery_engine_widget_configs except keys with no name are omitted"
  value       = { for k, v in google_discovery_engine_widget_config.discovery_engine_widget_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "discovery_engine_widget_configs_project" {
  description = "Map of project values across all discovery_engine_widget_configs, keyed the same as var.discovery_engine_widget_configs except keys with no project are omitted"
  value       = { for k, v in google_discovery_engine_widget_config.discovery_engine_widget_configs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "discovery_engine_widget_configs_ui_branding" {
  description = "Map of ui_branding values across all discovery_engine_widget_configs, keyed the same as var.discovery_engine_widget_configs except keys with no ui_branding are omitted"
  value       = { for k, v in google_discovery_engine_widget_config.discovery_engine_widget_configs : k => one(v.ui_branding) if v.ui_branding != null && length(v.ui_branding) > 0 }
}
output "discovery_engine_widget_configs_ui_settings" {
  description = "Map of ui_settings values across all discovery_engine_widget_configs, keyed the same as var.discovery_engine_widget_configs except keys with no ui_settings are omitted"
  value       = { for k, v in google_discovery_engine_widget_config.discovery_engine_widget_configs : k => one(v.ui_settings) if v.ui_settings != null && length(v.ui_settings) > 0 }
}
output "discovery_engine_widget_configs_widget_config_id" {
  description = "Map of widget_config_id values across all discovery_engine_widget_configs, keyed the same as var.discovery_engine_widget_configs except keys with no widget_config_id are omitted"
  value       = { for k, v in google_discovery_engine_widget_config.discovery_engine_widget_configs : k => v.widget_config_id if v.widget_config_id != null && length(v.widget_config_id) > 0 }
}

