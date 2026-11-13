variable "subscriptions" {
  description = <<EOT
Map of subscriptions, attributes below
Optional:
    - add_invoice_items
    - application_fee_percent
    - automatic_tax
    - backdate_start_date
    - billing_cycle_anchor
    - billing_cycle_anchor_config
    - billing_mode
    - billing_schedules
    - billing_thresholds
    - cancel_at
    - cancel_at_period_end
    - cancellation_details
    - collection_method
    - currency
    - customer
    - customer_account
    - days_until_due
    - default_payment_method
    - default_source
    - default_tax_rates
    - description
    - discounts
    - invoice_settings
    - items
    - metadata
    - off_session
    - on_behalf_of
    - pause_collection
    - payment_behavior
    - payment_settings
    - pending_invoice_item_interval
    - proration_behavior
    - transfer_data
    - trial_end
    - trial_from_plan
    - trial_period_days
    - trial_settings
EOT

  type = map(object({
    add_invoice_items = optional(list(object({
      discountable = optional(bool)
      discounts = optional(list(object({
        coupon         = optional(string)
        discount       = optional(string)
        promotion_code = optional(string)
      })))
      metadata = optional(map(string))
      period = optional(object({
        end = object({
          timestamp = optional(number)
          type      = string
        })
        start = object({
          timestamp = optional(number)
          type      = string
        })
      }))
      price = optional(string)
      price_data = optional(object({
        currency            = string
        product             = string
        tax_behavior        = optional(string)
        unit_amount         = optional(number)
        unit_amount_decimal = optional(number)
      }))
      quantity  = optional(number)
      tax_rates = optional(list(string))
    })))
    application_fee_percent = optional(number)
    automatic_tax = optional(object({
      enabled = bool
      liability = optional(object({
        account = optional(string)
        type    = string
      }))
    }))
    backdate_start_date  = optional(number)
    billing_cycle_anchor = optional(number)
    billing_cycle_anchor_config = optional(object({
      day_of_month = number
      hour         = optional(number)
      minute       = optional(number)
      month        = optional(number)
      second       = optional(number)
    }))
    billing_mode = optional(object({
      flexible = optional(object({
        proration_discounts = optional(string)
      }))
      type = string
    }))
    billing_schedules = optional(list(object({
      applies_to = optional(list(object({
        price = optional(string)
        type  = string
      })))
      bill_until = object({
        duration = optional(object({
          interval       = string
          interval_count = optional(number)
        }))
        timestamp = optional(number)
        type      = string
      })
      key = optional(string)
    })))
    billing_thresholds = optional(object({
      amount_gte                 = optional(number)
      reset_billing_cycle_anchor = optional(bool)
    }))
    cancel_at            = optional(number)
    cancel_at_period_end = optional(bool)
    cancellation_details = optional(object({
      comment  = optional(string)
      feedback = optional(string)
    }))
    collection_method      = optional(string)
    currency               = optional(string)
    customer               = optional(string)
    customer_account       = optional(string)
    days_until_due         = optional(number)
    default_payment_method = optional(string)
    default_source         = optional(string)
    default_tax_rates      = optional(list(string))
    description            = optional(string)
    discounts = optional(list(object({
      coupon         = optional(string)
      discount       = optional(string)
      promotion_code = optional(string)
    })))
    invoice_settings = optional(object({
      account_tax_ids = optional(list(string))
      issuer = optional(object({
        account = optional(string)
        type    = string
      }))
    }))
    items = optional(list(object({
      billing_thresholds = optional(object({
        usage_gte = number
      }))
      discounts = optional(list(object({
        coupon         = optional(string)
        discount       = optional(string)
        promotion_code = optional(string)
      })))
      metadata = optional(map(string))
      price    = optional(string)
      price_data = optional(object({
        currency = string
        product  = string
        recurring = object({
          interval       = string
          interval_count = optional(number)
        })
        tax_behavior        = optional(string)
        unit_amount         = optional(number)
        unit_amount_decimal = optional(number)
      }))
      quantity  = optional(number)
      tax_rates = optional(list(string))
    })))
    metadata     = optional(map(string))
    off_session  = optional(bool)
    on_behalf_of = optional(string)
    pause_collection = optional(object({
      behavior   = optional(string)
      resumes_at = optional(number)
    }))
    payment_behavior = optional(string)
    payment_settings = optional(object({
      payment_method_options = optional(object({
        acss_debit = optional(object({
          mandate_options = optional(object({
            transaction_type = optional(string)
          }))
          verification_method = optional(string)
        }))
        bancontact = optional(object({
          preferred_language = optional(string)
        }))
        card = optional(object({
          mandate_options = optional(object({
            amount      = optional(number)
            amount_type = optional(string)
            description = optional(string)
          }))
          network                = optional(string)
          request_three_d_secure = optional(string)
        }))
        customer_balance = optional(object({
          bank_transfer = optional(object({
            eu_bank_transfer = optional(object({
              country = string
            }))
            type = optional(string)
          }))
          funding_type = optional(string)
        }))
        payto = optional(object({
          mandate_options = optional(object({
            amount  = optional(number)
            purpose = optional(string)
          }))
        }))
        pix = optional(object({
          expires_after_seconds = optional(number)
          mandate_options = optional(object({
            amount              = optional(number)
            amount_includes_iof = optional(string)
            end_date            = optional(string)
            payment_schedule    = optional(string)
          }))
        }))
        upi = optional(object({
          mandate_options = optional(object({
            amount      = optional(number)
            amount_type = optional(string)
            description = optional(string)
            end_date    = optional(number)
          }))
        }))
        us_bank_account = optional(object({
          financial_connections = optional(object({
            filters = optional(object({
              account_subcategories = optional(list(string))
            }))
            permissions = optional(list(string))
            prefetch    = optional(list(string))
          }))
          verification_method = optional(string)
        }))
      }))
      payment_method_types        = optional(list(string))
      save_default_payment_method = optional(string)
    }))
    pending_invoice_item_interval = optional(object({
      interval       = string
      interval_count = optional(number)
    }))
    proration_behavior = optional(string)
    transfer_data = optional(object({
      amount_percent = optional(number)
      destination    = string
    }))
    trial_end         = optional(number)
    trial_from_plan   = optional(bool)
    trial_period_days = optional(number)
    trial_settings = optional(object({
      end_behavior = object({
        missing_payment_method = string
      })
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.automatic_tax == null || (v.automatic_tax.liability == null || (contains(["account", "self"], v.automatic_tax.liability.type)))
      )
    ])
    error_message = "must be one of: \"account\", \"self\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.billing_mode == null || (v.billing_mode.flexible == null || (v.billing_mode.flexible.proration_discounts == null || (contains(["included", "itemized"], v.billing_mode.flexible.proration_discounts))))
      )
    ])
    error_message = "must be one of: \"included\", \"itemized\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.billing_mode == null || (contains(["classic", "flexible"], v.billing_mode.type))
      )
    ])
    error_message = "must be one of: \"classic\", \"flexible\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.billing_schedules == null || alltrue([for item in v.billing_schedules : (item.applies_to == null || alltrue([for item in item.applies_to : (contains(["price"], item.type))]))])
      )
    ])
    error_message = "must be one of: \"price\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.billing_schedules == null || alltrue([for item in v.billing_schedules : (item.bill_until.duration == null || (contains(["day", "month", "week", "year"], item.bill_until.duration.interval)))])
      )
    ])
    error_message = "must be one of: \"day\", \"month\", \"week\", \"year\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.billing_schedules == null || alltrue([for item in v.billing_schedules : (contains(["duration", "timestamp"], item.bill_until.type))])
      )
    ])
    error_message = "must be one of: \"duration\", \"timestamp\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.cancellation_details == null || (v.cancellation_details.feedback == null || (contains(["customer_service", "low_quality", "missing_features", "other", "switched_service", "too_complex", "too_expensive", "unused"], v.cancellation_details.feedback)))
      )
    ])
    error_message = "must be one of: \"customer_service\", \"low_quality\", \"missing_features\", \"other\", \"switched_service\", \"too_complex\", \"too_expensive\", \"unused\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.collection_method == null || (contains(["charge_automatically", "send_invoice"], v.collection_method))
      )
    ])
    error_message = "must be one of: \"charge_automatically\", \"send_invoice\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.invoice_settings == null || (v.invoice_settings.issuer == null || (contains(["account", "self"], v.invoice_settings.issuer.type)))
      )
    ])
    error_message = "must be one of: \"account\", \"self\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.pause_collection == null || (v.pause_collection.behavior == null || (contains(["keep_as_draft", "mark_uncollectible", "void"], v.pause_collection.behavior)))
      )
    ])
    error_message = "must be one of: \"keep_as_draft\", \"mark_uncollectible\", \"void\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.payment_settings == null || (v.payment_settings.payment_method_options == null || (v.payment_settings.payment_method_options.acss_debit == null || (v.payment_settings.payment_method_options.acss_debit.mandate_options == null || (v.payment_settings.payment_method_options.acss_debit.mandate_options.transaction_type == null || (contains(["business", "personal"], v.payment_settings.payment_method_options.acss_debit.mandate_options.transaction_type))))))
      )
    ])
    error_message = "must be one of: \"business\", \"personal\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.payment_settings == null || (v.payment_settings.payment_method_options == null || (v.payment_settings.payment_method_options.acss_debit == null || (v.payment_settings.payment_method_options.acss_debit.verification_method == null || (contains(["automatic", "instant", "microdeposits"], v.payment_settings.payment_method_options.acss_debit.verification_method)))))
      )
    ])
    error_message = "must be one of: \"automatic\", \"instant\", \"microdeposits\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.payment_settings == null || (v.payment_settings.payment_method_options == null || (v.payment_settings.payment_method_options.bancontact == null || (v.payment_settings.payment_method_options.bancontact.preferred_language == null || (contains(["de", "en", "fr", "nl"], v.payment_settings.payment_method_options.bancontact.preferred_language)))))
      )
    ])
    error_message = "must be one of: \"de\", \"en\", \"fr\", \"nl\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.payment_settings == null || (v.payment_settings.payment_method_options == null || (v.payment_settings.payment_method_options.card == null || (v.payment_settings.payment_method_options.card.mandate_options == null || (v.payment_settings.payment_method_options.card.mandate_options.amount_type == null || (contains(["fixed", "maximum"], v.payment_settings.payment_method_options.card.mandate_options.amount_type))))))
      )
    ])
    error_message = "must be one of: \"fixed\", \"maximum\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.payment_settings == null || (v.payment_settings.payment_method_options == null || (v.payment_settings.payment_method_options.card == null || (v.payment_settings.payment_method_options.card.network == null || (contains(["amex", "cartes_bancaires", "diners", "discover", "eftpos_au", "girocard", "interac", "jcb", "link", "mastercard", "unionpay", "unknown", "visa"], v.payment_settings.payment_method_options.card.network)))))
      )
    ])
    error_message = "must be one of: \"amex\", \"cartes_bancaires\", \"diners\", \"discover\", \"eftpos_au\", \"girocard\", \"interac\", \"jcb\", \"link\", \"mastercard\", \"unionpay\", \"unknown\", \"visa\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.payment_settings == null || (v.payment_settings.payment_method_options == null || (v.payment_settings.payment_method_options.card == null || (v.payment_settings.payment_method_options.card.request_three_d_secure == null || (contains(["any", "automatic", "challenge"], v.payment_settings.payment_method_options.card.request_three_d_secure)))))
      )
    ])
    error_message = "must be one of: \"any\", \"automatic\", \"challenge\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.payment_settings == null || (v.payment_settings.payment_method_options == null || (v.payment_settings.payment_method_options.customer_balance == null || (v.payment_settings.payment_method_options.customer_balance.bank_transfer == null || (v.payment_settings.payment_method_options.customer_balance.bank_transfer.eu_bank_transfer == null || (contains(["BE", "DE", "ES", "FR", "IE", "NL"], v.payment_settings.payment_method_options.customer_balance.bank_transfer.eu_bank_transfer.country))))))
      )
    ])
    error_message = "must be one of: \"BE\", \"DE\", \"ES\", \"FR\", \"IE\", \"NL\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.payment_settings == null || (v.payment_settings.payment_method_options == null || (v.payment_settings.payment_method_options.customer_balance == null || (v.payment_settings.payment_method_options.customer_balance.funding_type == null || (contains(["bank_transfer"], v.payment_settings.payment_method_options.customer_balance.funding_type)))))
      )
    ])
    error_message = "must be one of: \"bank_transfer\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.payment_settings == null || (v.payment_settings.payment_method_options == null || (v.payment_settings.payment_method_options.payto == null || (v.payment_settings.payment_method_options.payto.mandate_options == null || (v.payment_settings.payment_method_options.payto.mandate_options.purpose == null || (contains(["dependant_support", "government", "loan", "mortgage", "other", "pension", "personal", "retail", "salary", "tax", "utility"], v.payment_settings.payment_method_options.payto.mandate_options.purpose))))))
      )
    ])
    error_message = "must be one of: \"dependant_support\", \"government\", \"loan\", \"mortgage\", \"other\", \"pension\", \"personal\", \"retail\", \"salary\", \"tax\", \"utility\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.payment_settings == null || (v.payment_settings.payment_method_options == null || (v.payment_settings.payment_method_options.pix == null || (v.payment_settings.payment_method_options.pix.mandate_options == null || (v.payment_settings.payment_method_options.pix.mandate_options.amount_includes_iof == null || (contains(["always", "never"], v.payment_settings.payment_method_options.pix.mandate_options.amount_includes_iof))))))
      )
    ])
    error_message = "must be one of: \"always\", \"never\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.payment_settings == null || (v.payment_settings.payment_method_options == null || (v.payment_settings.payment_method_options.pix == null || (v.payment_settings.payment_method_options.pix.mandate_options == null || (v.payment_settings.payment_method_options.pix.mandate_options.payment_schedule == null || (contains(["halfyearly", "monthly", "quarterly", "weekly", "yearly"], v.payment_settings.payment_method_options.pix.mandate_options.payment_schedule))))))
      )
    ])
    error_message = "must be one of: \"halfyearly\", \"monthly\", \"quarterly\", \"weekly\", \"yearly\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.payment_settings == null || (v.payment_settings.payment_method_options == null || (v.payment_settings.payment_method_options.upi == null || (v.payment_settings.payment_method_options.upi.mandate_options == null || (v.payment_settings.payment_method_options.upi.mandate_options.amount_type == null || (contains(["fixed", "maximum"], v.payment_settings.payment_method_options.upi.mandate_options.amount_type))))))
      )
    ])
    error_message = "must be one of: \"fixed\", \"maximum\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.payment_settings == null || (v.payment_settings.payment_method_options == null || (v.payment_settings.payment_method_options.us_bank_account == null || (v.payment_settings.payment_method_options.us_bank_account.verification_method == null || (contains(["automatic", "instant", "microdeposits"], v.payment_settings.payment_method_options.us_bank_account.verification_method)))))
      )
    ])
    error_message = "must be one of: \"automatic\", \"instant\", \"microdeposits\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.payment_settings == null || (v.payment_settings.save_default_payment_method == null || (contains(["off", "on_subscription"], v.payment_settings.save_default_payment_method)))
      )
    ])
    error_message = "must be one of: \"off\", \"on_subscription\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.pending_invoice_item_interval == null || (contains(["day", "month", "week", "year"], v.pending_invoice_item_interval.interval))
      )
    ])
    error_message = "must be one of: \"day\", \"month\", \"week\", \"year\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.trial_settings == null || (contains(["cancel", "create_invoice", "pause"], v.trial_settings.end_behavior.missing_payment_method))
      )
    ])
    error_message = "must be one of: \"cancel\", \"create_invoice\", \"pause\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.payment_behavior == null || (contains(["allow_incomplete", "default_incomplete", "error_if_incomplete", "pending_if_incomplete"], v.payment_behavior))
      )
    ])
    error_message = "must be one of: \"allow_incomplete\", \"default_incomplete\", \"error_if_incomplete\", \"pending_if_incomplete\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.proration_behavior == null || (contains(["always_invoice", "create_prorations", "none"], v.proration_behavior))
      )
    ])
    error_message = "must be one of: \"always_invoice\", \"create_prorations\", \"none\""
  }
}

