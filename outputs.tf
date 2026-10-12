output "subscriptions_id" {
  description = "Map of id values across all subscriptions, keyed the same as var.subscriptions except keys with no id are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "subscriptions_application" {
  description = "Map of application values across all subscriptions, keyed the same as var.subscriptions except keys with no application are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.application if v.application != null && length(v.application) > 0 }
}
output "subscriptions_application_fee_percent" {
  description = "Map of application_fee_percent values across all subscriptions, keyed the same as var.subscriptions except keys with no application_fee_percent are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.application_fee_percent if v.application_fee_percent != null }
}
output "subscriptions_automatic_tax" {
  description = "Map of automatic_tax values across all subscriptions, keyed the same as var.subscriptions except keys with no automatic_tax are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.automatic_tax if v.automatic_tax != null && length(v.automatic_tax) > 0 }
}
output "subscriptions_billing_cycle_anchor" {
  description = "Map of billing_cycle_anchor values across all subscriptions, keyed the same as var.subscriptions except keys with no billing_cycle_anchor are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.billing_cycle_anchor if v.billing_cycle_anchor != null }
}
output "subscriptions_billing_cycle_anchor_config" {
  description = "Map of billing_cycle_anchor_config values across all subscriptions, keyed the same as var.subscriptions except keys with no billing_cycle_anchor_config are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.billing_cycle_anchor_config if v.billing_cycle_anchor_config != null && length(v.billing_cycle_anchor_config) > 0 }
}
output "subscriptions_billing_mode" {
  description = "Map of billing_mode values across all subscriptions, keyed the same as var.subscriptions except keys with no billing_mode are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.billing_mode if v.billing_mode != null && length(v.billing_mode) > 0 }
}
output "subscriptions_billing_schedules" {
  description = "Map of billing_schedules values across all subscriptions, keyed the same as var.subscriptions except keys with no billing_schedules are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.billing_schedules if v.billing_schedules != null && length(v.billing_schedules) > 0 }
}
output "subscriptions_billing_thresholds" {
  description = "Map of billing_thresholds values across all subscriptions, keyed the same as var.subscriptions except keys with no billing_thresholds are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.billing_thresholds if v.billing_thresholds != null && length(v.billing_thresholds) > 0 }
}
output "subscriptions_cancel_at" {
  description = "Map of cancel_at values across all subscriptions, keyed the same as var.subscriptions except keys with no cancel_at are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.cancel_at if v.cancel_at != null }
}
output "subscriptions_cancel_at_period_end" {
  description = "Map of cancel_at_period_end values across all subscriptions, keyed the same as var.subscriptions except keys with no cancel_at_period_end are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.cancel_at_period_end if v.cancel_at_period_end != null }
}
output "subscriptions_canceled_at" {
  description = "Map of canceled_at values across all subscriptions, keyed the same as var.subscriptions except keys with no canceled_at are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.canceled_at if v.canceled_at != null }
}
output "subscriptions_cancellation_details" {
  description = "Map of cancellation_details values across all subscriptions, keyed the same as var.subscriptions except keys with no cancellation_details are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.cancellation_details if v.cancellation_details != null && length(v.cancellation_details) > 0 }
}
output "subscriptions_collection_method" {
  description = "Map of collection_method values across all subscriptions, keyed the same as var.subscriptions except keys with no collection_method are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.collection_method if v.collection_method != null && length(v.collection_method) > 0 }
}
output "subscriptions_created" {
  description = "Map of created values across all subscriptions, keyed the same as var.subscriptions except keys with no created are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.created if v.created != null }
}
output "subscriptions_currency" {
  description = "Map of currency values across all subscriptions, keyed the same as var.subscriptions except keys with no currency are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.currency if v.currency != null && length(v.currency) > 0 }
}
output "subscriptions_customer" {
  description = "Map of customer values across all subscriptions, keyed the same as var.subscriptions except keys with no customer are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.customer if v.customer != null && length(v.customer) > 0 }
}
output "subscriptions_customer_account" {
  description = "Map of customer_account values across all subscriptions, keyed the same as var.subscriptions except keys with no customer_account are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.customer_account if v.customer_account != null && length(v.customer_account) > 0 }
}
output "subscriptions_days_until_due" {
  description = "Map of days_until_due values across all subscriptions, keyed the same as var.subscriptions except keys with no days_until_due are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.days_until_due if v.days_until_due != null }
}
output "subscriptions_default_payment_method" {
  description = "Map of default_payment_method values across all subscriptions, keyed the same as var.subscriptions except keys with no default_payment_method are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.default_payment_method if v.default_payment_method != null && length(v.default_payment_method) > 0 }
}
output "subscriptions_default_source" {
  description = "Map of default_source values across all subscriptions, keyed the same as var.subscriptions except keys with no default_source are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.default_source if v.default_source != null && length(v.default_source) > 0 }
}
output "subscriptions_default_tax_rates" {
  description = "Map of default_tax_rates values across all subscriptions, keyed the same as var.subscriptions except keys with no default_tax_rates are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.default_tax_rates if v.default_tax_rates != null && length(v.default_tax_rates) > 0 }
}
output "subscriptions_description" {
  description = "Map of description values across all subscriptions, keyed the same as var.subscriptions except keys with no description are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.description if v.description != null && length(v.description) > 0 }
}
output "subscriptions_discounts" {
  description = "Map of discounts values across all subscriptions, keyed the same as var.subscriptions except keys with no discounts are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.discounts if v.discounts != null && length(v.discounts) > 0 }
}
output "subscriptions_ended_at" {
  description = "Map of ended_at values across all subscriptions, keyed the same as var.subscriptions except keys with no ended_at are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.ended_at if v.ended_at != null }
}
output "subscriptions_invoice_settings" {
  description = "Map of invoice_settings values across all subscriptions, keyed the same as var.subscriptions except keys with no invoice_settings are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.invoice_settings if v.invoice_settings != null && length(v.invoice_settings) > 0 }
}
output "subscriptions_items" {
  description = "Map of items values across all subscriptions, keyed the same as var.subscriptions except keys with no items are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.items if v.items != null && length(v.items) > 0 }
}
output "subscriptions_livemode" {
  description = "Map of livemode values across all subscriptions, keyed the same as var.subscriptions except keys with no livemode are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.livemode if v.livemode != null }
}
output "subscriptions_managed_payments" {
  description = "Map of managed_payments values across all subscriptions, keyed the same as var.subscriptions except keys with no managed_payments are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.managed_payments if v.managed_payments != null && length(v.managed_payments) > 0 }
}
output "subscriptions_metadata" {
  description = "Map of metadata values across all subscriptions, keyed the same as var.subscriptions except keys with no metadata are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "subscriptions_next_pending_invoice_item_invoice" {
  description = "Map of next_pending_invoice_item_invoice values across all subscriptions, keyed the same as var.subscriptions except keys with no next_pending_invoice_item_invoice are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.next_pending_invoice_item_invoice if v.next_pending_invoice_item_invoice != null }
}
output "subscriptions_object" {
  description = "Map of object values across all subscriptions, keyed the same as var.subscriptions except keys with no object are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.object if v.object != null && length(v.object) > 0 }
}
output "subscriptions_on_behalf_of" {
  description = "Map of on_behalf_of values across all subscriptions, keyed the same as var.subscriptions except keys with no on_behalf_of are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.on_behalf_of if v.on_behalf_of != null && length(v.on_behalf_of) > 0 }
}
output "subscriptions_pause_collection" {
  description = "Map of pause_collection values across all subscriptions, keyed the same as var.subscriptions except keys with no pause_collection are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.pause_collection if v.pause_collection != null && length(v.pause_collection) > 0 }
}
output "subscriptions_payment_settings" {
  description = "Map of payment_settings values across all subscriptions, keyed the same as var.subscriptions except keys with no payment_settings are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.payment_settings if v.payment_settings != null && length(v.payment_settings) > 0 }
}
output "subscriptions_pending_invoice_item_interval" {
  description = "Map of pending_invoice_item_interval values across all subscriptions, keyed the same as var.subscriptions except keys with no pending_invoice_item_interval are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.pending_invoice_item_interval if v.pending_invoice_item_interval != null && length(v.pending_invoice_item_interval) > 0 }
}
output "subscriptions_pending_setup_intent" {
  description = "Map of pending_setup_intent values across all subscriptions, keyed the same as var.subscriptions except keys with no pending_setup_intent are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.pending_setup_intent if v.pending_setup_intent != null && length(v.pending_setup_intent) > 0 }
}
output "subscriptions_pending_update" {
  description = "Map of pending_update values across all subscriptions, keyed the same as var.subscriptions except keys with no pending_update are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.pending_update if v.pending_update != null && length(v.pending_update) > 0 }
}
output "subscriptions_presentment_details" {
  description = "Map of presentment_details values across all subscriptions, keyed the same as var.subscriptions except keys with no presentment_details are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.presentment_details if v.presentment_details != null && length(v.presentment_details) > 0 }
}
output "subscriptions_schedule" {
  description = "Map of schedule values across all subscriptions, keyed the same as var.subscriptions except keys with no schedule are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.schedule if v.schedule != null && length(v.schedule) > 0 }
}
output "subscriptions_start_date" {
  description = "Map of start_date values across all subscriptions, keyed the same as var.subscriptions except keys with no start_date are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.start_date if v.start_date != null }
}
output "subscriptions_status" {
  description = "Map of status values across all subscriptions, keyed the same as var.subscriptions except keys with no status are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.status if v.status != null && length(v.status) > 0 }
}
output "subscriptions_test_clock" {
  description = "Map of test_clock values across all subscriptions, keyed the same as var.subscriptions except keys with no test_clock are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.test_clock if v.test_clock != null && length(v.test_clock) > 0 }
}
output "subscriptions_transfer_data" {
  description = "Map of transfer_data values across all subscriptions, keyed the same as var.subscriptions except keys with no transfer_data are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.transfer_data if v.transfer_data != null && length(v.transfer_data) > 0 }
}
output "subscriptions_trial_end" {
  description = "Map of trial_end values across all subscriptions, keyed the same as var.subscriptions except keys with no trial_end are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.trial_end if v.trial_end != null }
}
output "subscriptions_trial_settings" {
  description = "Map of trial_settings values across all subscriptions, keyed the same as var.subscriptions except keys with no trial_settings are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.trial_settings if v.trial_settings != null && length(v.trial_settings) > 0 }
}
output "subscriptions_trial_start" {
  description = "Map of trial_start values across all subscriptions, keyed the same as var.subscriptions except keys with no trial_start are omitted"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.trial_start if v.trial_start != null }
}

