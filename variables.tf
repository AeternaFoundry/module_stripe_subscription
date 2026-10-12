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
}

