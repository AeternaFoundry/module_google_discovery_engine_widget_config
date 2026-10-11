variable "discovery_engine_widget_configs" {
  description = <<EOT
Map of discovery_engine_widget_configs, attributes below
Required:
    - engine_id
    - location
Optional:
    - collection_id
    - project
    - widget_config_id
    - access_settings (block):
        - allow_public_access (optional)
        - allowlisted_domains (optional)
        - enable_web_app (optional)
        - language_code (optional)
        - workforce_identity_pool_provider (optional)
    - homepage_setting (block):
        - shortcuts (optional, block):
            - destination_uri (optional)
            - icon (optional, block):
                - url (optional)
            - title (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - ui_branding (block):
        - logo (optional, block):
            - url (optional)
    - ui_settings (block):
        - data_store_ui_configs (optional, block):
            - facet_field (optional, block):
                - display_name (optional)
                - field (required)
            - fields_ui_components_map (optional, block):
                - device_visibility (optional)
                - display_template (optional)
                - field (required)
                - ui_component (required)
            - name (optional)
        - default_search_request_order_by (optional)
        - disable_user_events_collection (optional)
        - enable_autocomplete (optional)
        - enable_create_agent_button (optional)
        - enable_people_search (optional)
        - enable_quality_feedback (optional)
        - enable_safe_search (optional)
        - enable_search_as_you_type (optional)
        - enable_visual_content_summary (optional)
        - generative_answer_config (optional, block):
            - disable_related_questions (optional)
            - ignore_adversarial_query (optional)
            - ignore_low_relevant_content (optional)
            - ignore_non_answer_seeking_query (optional)
            - image_source (optional)
            - language_code (optional)
            - max_rephrase_steps (optional)
            - model_prompt_preamble (optional)
            - model_version (optional)
            - result_count (optional)
        - interaction_type (optional)
        - result_description_type (optional)
        - search_addon_spec (optional, block):
            - generative_answer_add_on_disabled (optional)
            - kpi_personalization_add_on_disabled (optional)
            - semantic_add_on_disabled (optional)
        - source_admin_display_name_enabled (optional)
EOT

  type = map(object({
    engine_id        = string
    location         = string
    collection_id    = optional(string)
    project          = optional(string)
    widget_config_id = optional(string)
    access_settings = optional(object({
      allow_public_access              = optional(bool)
      allowlisted_domains              = optional(list(string))
      enable_web_app                   = optional(bool)
      language_code                    = optional(string)
      workforce_identity_pool_provider = optional(string)
    }))
    homepage_setting = optional(object({
      shortcuts = optional(list(object({
        destination_uri = optional(string)
        icon = optional(object({
          url = optional(string)
        }))
        title = optional(string)
      })))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    ui_branding = optional(object({
      logo = optional(object({
        url = optional(string)
      }))
    }))
    ui_settings = optional(object({
      data_store_ui_configs = optional(list(object({
        facet_field = optional(list(object({
          display_name = optional(string)
          field        = string
        })))
        fields_ui_components_map = optional(list(object({
          device_visibility = optional(list(string))
          display_template  = optional(string)
          field             = string
          ui_component      = string
        })))
        name = optional(string)
      })))
      default_search_request_order_by = optional(string)
      disable_user_events_collection  = optional(bool)
      enable_autocomplete             = optional(bool)
      enable_create_agent_button      = optional(bool)
      enable_people_search            = optional(bool)
      enable_quality_feedback         = optional(bool)
      enable_safe_search              = optional(bool)
      enable_search_as_you_type       = optional(bool)
      enable_visual_content_summary   = optional(bool)
      generative_answer_config = optional(object({
        disable_related_questions       = optional(bool)
        ignore_adversarial_query        = optional(bool)
        ignore_low_relevant_content     = optional(bool)
        ignore_non_answer_seeking_query = optional(bool)
        image_source                    = optional(string)
        language_code                   = optional(string)
        max_rephrase_steps              = optional(number)
        model_prompt_preamble           = optional(string)
        model_version                   = optional(string)
        result_count                    = optional(number)
      }))
      interaction_type        = optional(string)
      result_description_type = optional(string)
      search_addon_spec = optional(object({
        generative_answer_add_on_disabled   = optional(bool)
        kpi_personalization_add_on_disabled = optional(bool)
        semantic_add_on_disabled            = optional(bool)
      }))
      source_admin_display_name_enabled = optional(bool)
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

