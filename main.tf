resource "google_discovery_engine_widget_config" "discovery_engine_widget_configs" {
  for_each = var.discovery_engine_widget_configs

  engine_id        = each.value.engine_id
  location         = each.value.location
  collection_id    = each.value.collection_id
  project          = each.value.project
  widget_config_id = each.value.widget_config_id

  dynamic "access_settings" {
    for_each = each.value.access_settings != null ? [each.value.access_settings] : []
    content {
      allow_public_access              = access_settings.value.allow_public_access
      allowlisted_domains              = access_settings.value.allowlisted_domains
      enable_web_app                   = access_settings.value.enable_web_app
      language_code                    = access_settings.value.language_code
      workforce_identity_pool_provider = access_settings.value.workforce_identity_pool_provider
    }
  }

  dynamic "homepage_setting" {
    for_each = each.value.homepage_setting != null ? [each.value.homepage_setting] : []
    content {
      dynamic "shortcuts" {
        for_each = homepage_setting.value.shortcuts != null ? homepage_setting.value.shortcuts : []
        content {
          destination_uri = shortcuts.value.destination_uri
          dynamic "icon" {
            for_each = shortcuts.value.icon != null ? [shortcuts.value.icon] : []
            content {
              url = icon.value.url
            }
          }
          title = shortcuts.value.title
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "ui_branding" {
    for_each = each.value.ui_branding != null ? [each.value.ui_branding] : []
    content {
      dynamic "logo" {
        for_each = ui_branding.value.logo != null ? [ui_branding.value.logo] : []
        content {
          url = logo.value.url
        }
      }
    }
  }

  dynamic "ui_settings" {
    for_each = each.value.ui_settings != null ? [each.value.ui_settings] : []
    content {
      dynamic "data_store_ui_configs" {
        for_each = ui_settings.value.data_store_ui_configs != null ? ui_settings.value.data_store_ui_configs : []
        content {
          dynamic "facet_field" {
            for_each = data_store_ui_configs.value.facet_field != null ? data_store_ui_configs.value.facet_field : []
            content {
              display_name = facet_field.value.display_name
              field        = facet_field.value.field
            }
          }
          dynamic "fields_ui_components_map" {
            for_each = data_store_ui_configs.value.fields_ui_components_map != null ? data_store_ui_configs.value.fields_ui_components_map : []
            content {
              device_visibility = fields_ui_components_map.value.device_visibility
              display_template  = fields_ui_components_map.value.display_template
              field             = fields_ui_components_map.value.field
              ui_component      = fields_ui_components_map.value.ui_component
            }
          }
          name = data_store_ui_configs.value.name
        }
      }
      default_search_request_order_by = ui_settings.value.default_search_request_order_by
      disable_user_events_collection  = ui_settings.value.disable_user_events_collection
      enable_autocomplete             = ui_settings.value.enable_autocomplete
      enable_create_agent_button      = ui_settings.value.enable_create_agent_button
      enable_people_search            = ui_settings.value.enable_people_search
      enable_quality_feedback         = ui_settings.value.enable_quality_feedback
      enable_safe_search              = ui_settings.value.enable_safe_search
      enable_search_as_you_type       = ui_settings.value.enable_search_as_you_type
      enable_visual_content_summary   = ui_settings.value.enable_visual_content_summary
      dynamic "generative_answer_config" {
        for_each = ui_settings.value.generative_answer_config != null ? [ui_settings.value.generative_answer_config] : []
        content {
          disable_related_questions       = generative_answer_config.value.disable_related_questions
          ignore_adversarial_query        = generative_answer_config.value.ignore_adversarial_query
          ignore_low_relevant_content     = generative_answer_config.value.ignore_low_relevant_content
          ignore_non_answer_seeking_query = generative_answer_config.value.ignore_non_answer_seeking_query
          image_source                    = generative_answer_config.value.image_source
          language_code                   = generative_answer_config.value.language_code
          max_rephrase_steps              = generative_answer_config.value.max_rephrase_steps
          model_prompt_preamble           = generative_answer_config.value.model_prompt_preamble
          model_version                   = generative_answer_config.value.model_version
          result_count                    = generative_answer_config.value.result_count
        }
      }
      interaction_type        = ui_settings.value.interaction_type
      result_description_type = ui_settings.value.result_description_type
      dynamic "search_addon_spec" {
        for_each = ui_settings.value.search_addon_spec != null ? [ui_settings.value.search_addon_spec] : []
        content {
          generative_answer_add_on_disabled   = search_addon_spec.value.generative_answer_add_on_disabled
          kpi_personalization_add_on_disabled = search_addon_spec.value.kpi_personalization_add_on_disabled
          semantic_add_on_disabled            = search_addon_spec.value.semantic_add_on_disabled
        }
      }
      source_admin_display_name_enabled = ui_settings.value.source_admin_display_name_enabled
    }
  }
}

