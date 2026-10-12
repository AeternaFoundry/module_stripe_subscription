resource "stripe_subscription" "subscriptions" {
  for_each = var.subscriptions

  add_invoice_items             = each.value.add_invoice_items
  application_fee_percent       = each.value.application_fee_percent
  automatic_tax                 = each.value.automatic_tax
  backdate_start_date           = each.value.backdate_start_date
  billing_cycle_anchor          = each.value.billing_cycle_anchor
  billing_cycle_anchor_config   = each.value.billing_cycle_anchor_config
  billing_mode                  = each.value.billing_mode
  billing_schedules             = each.value.billing_schedules
  billing_thresholds            = each.value.billing_thresholds
  cancel_at                     = each.value.cancel_at
  cancel_at_period_end          = each.value.cancel_at_period_end
  cancellation_details          = each.value.cancellation_details
  collection_method             = each.value.collection_method
  currency                      = each.value.currency
  customer                      = each.value.customer
  customer_account              = each.value.customer_account
  days_until_due                = each.value.days_until_due
  default_payment_method        = each.value.default_payment_method
  default_source                = each.value.default_source
  default_tax_rates             = each.value.default_tax_rates
  description                   = each.value.description
  discounts                     = each.value.discounts
  invoice_settings              = each.value.invoice_settings
  items                         = each.value.items
  metadata                      = each.value.metadata
  off_session                   = each.value.off_session
  on_behalf_of                  = each.value.on_behalf_of
  pause_collection              = each.value.pause_collection
  payment_behavior              = each.value.payment_behavior
  payment_settings              = each.value.payment_settings
  pending_invoice_item_interval = each.value.pending_invoice_item_interval
  proration_behavior            = each.value.proration_behavior
  transfer_data                 = each.value.transfer_data
  trial_end                     = each.value.trial_end
  trial_from_plan               = each.value.trial_from_plan
  trial_period_days             = each.value.trial_period_days
  trial_settings                = each.value.trial_settings
}

