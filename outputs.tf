output "subscriptions_id" {
  description = "Map of id values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.id }
}
output "subscriptions_application" {
  description = "Map of application values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.application }
}
output "subscriptions_application_fee_percent" {
  description = "Map of application_fee_percent values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.application_fee_percent }
}
output "subscriptions_automatic_tax" {
  description = "Map of automatic_tax values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.automatic_tax }
}
output "subscriptions_billing_cycle_anchor" {
  description = "Map of billing_cycle_anchor values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.billing_cycle_anchor }
}
output "subscriptions_billing_cycle_anchor_config" {
  description = "Map of billing_cycle_anchor_config values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.billing_cycle_anchor_config }
}
output "subscriptions_billing_mode" {
  description = "Map of billing_mode values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.billing_mode }
}
output "subscriptions_billing_schedules" {
  description = "Map of billing_schedules values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.billing_schedules }
}
output "subscriptions_billing_thresholds" {
  description = "Map of billing_thresholds values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.billing_thresholds }
}
output "subscriptions_cancel_at" {
  description = "Map of cancel_at values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.cancel_at }
}
output "subscriptions_cancel_at_period_end" {
  description = "Map of cancel_at_period_end values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.cancel_at_period_end }
}
output "subscriptions_canceled_at" {
  description = "Map of canceled_at values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.canceled_at }
}
output "subscriptions_cancellation_details" {
  description = "Map of cancellation_details values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.cancellation_details }
}
output "subscriptions_collection_method" {
  description = "Map of collection_method values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.collection_method }
}
output "subscriptions_created" {
  description = "Map of created values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.created }
}
output "subscriptions_currency" {
  description = "Map of currency values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.currency }
}
output "subscriptions_customer" {
  description = "Map of customer values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.customer }
}
output "subscriptions_customer_account" {
  description = "Map of customer_account values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.customer_account }
}
output "subscriptions_days_until_due" {
  description = "Map of days_until_due values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.days_until_due }
}
output "subscriptions_default_payment_method" {
  description = "Map of default_payment_method values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.default_payment_method }
}
output "subscriptions_default_source" {
  description = "Map of default_source values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.default_source }
}
output "subscriptions_default_tax_rates" {
  description = "Map of default_tax_rates values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.default_tax_rates }
}
output "subscriptions_description" {
  description = "Map of description values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.description }
}
output "subscriptions_discounts" {
  description = "Map of discounts values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.discounts }
}
output "subscriptions_ended_at" {
  description = "Map of ended_at values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.ended_at }
}
output "subscriptions_invoice_settings" {
  description = "Map of invoice_settings values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.invoice_settings }
}
output "subscriptions_items" {
  description = "Map of items values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.items }
}
output "subscriptions_livemode" {
  description = "Map of livemode values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.livemode }
}
output "subscriptions_managed_payments" {
  description = "Map of managed_payments values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.managed_payments }
}
output "subscriptions_metadata" {
  description = "Map of metadata values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.metadata }
}
output "subscriptions_next_pending_invoice_item_invoice" {
  description = "Map of next_pending_invoice_item_invoice values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.next_pending_invoice_item_invoice }
}
output "subscriptions_object" {
  description = "Map of object values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.object }
}
output "subscriptions_on_behalf_of" {
  description = "Map of on_behalf_of values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.on_behalf_of }
}
output "subscriptions_pause_collection" {
  description = "Map of pause_collection values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.pause_collection }
}
output "subscriptions_payment_settings" {
  description = "Map of payment_settings values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.payment_settings }
}
output "subscriptions_pending_invoice_item_interval" {
  description = "Map of pending_invoice_item_interval values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.pending_invoice_item_interval }
}
output "subscriptions_pending_setup_intent" {
  description = "Map of pending_setup_intent values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.pending_setup_intent }
}
output "subscriptions_pending_update" {
  description = "Map of pending_update values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.pending_update }
}
output "subscriptions_presentment_details" {
  description = "Map of presentment_details values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.presentment_details }
}
output "subscriptions_schedule" {
  description = "Map of schedule values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.schedule }
}
output "subscriptions_start_date" {
  description = "Map of start_date values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.start_date }
}
output "subscriptions_status" {
  description = "Map of status values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.status }
}
output "subscriptions_test_clock" {
  description = "Map of test_clock values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.test_clock }
}
output "subscriptions_transfer_data" {
  description = "Map of transfer_data values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.transfer_data }
}
output "subscriptions_trial_end" {
  description = "Map of trial_end values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.trial_end }
}
output "subscriptions_trial_settings" {
  description = "Map of trial_settings values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.trial_settings }
}
output "subscriptions_trial_start" {
  description = "Map of trial_start values across all subscriptions, keyed the same as var.subscriptions"
  value       = { for k, v in stripe_subscription.subscriptions : k => v.trial_start }
}

