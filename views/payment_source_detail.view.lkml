view: payment_source_detail {
  sql_table_name: "WORKSPACE_233686783"."payment_source_detail"
    ;;

  dimension: 3d_authenticated {
    type: string
    sql: ${TABLE}."3d_authenticated" ;;
  }

  dimension: 3d_offered {
    type: string
    sql: ${TABLE}."3d_offered" ;;
  }

  dimension: 3d_result {
    type: string
    sql: ${TABLE}."3d_result" ;;
  }

  dimension: acs_challenge_mandated {
    type: string
    sql: ${TABLE}."acs_challenge_mandated" ;;
  }

  dimension: adyen_payment_attribute_unique_id {
    type: string
    sql: ${TABLE}."adyen_payment_attribute_unique_id" ;;
  }

  dimension: adyen_payment_status_l1 {
    type: string
    sql: ${TABLE}."adyen_payment_status_l1" ;;
  }

  dimension: adyen_payment_status_l2 {
    type: string
    sql: ${TABLE}."adyen_payment_status_l2" ;;
  }

  dimension: adyen_payment_status_l3 {
    type: string
    sql: ${TABLE}."adyen_payment_status_l3" ;;
  }

  dimension: adyen_payment_status_l4 {
    type: string
    sql: ${TABLE}."adyen_payment_status_l4" ;;
  }

  dimension: adyen_payment_unique_id {
    type: string
    sql: ${TABLE}."adyen_payment_unique_id" ;;
  }

  dimension: adyen_psp_reference {
    type: string
    sql: ${TABLE}."adyen_psp_reference" ;;
  }

  dimension: adyen_response_message_l1 {
    type: string
    sql: ${TABLE}."adyen_response_message_l1" ;;
  }

  dimension: adyen_response_message_l2 {
    type: string
    sql: ${TABLE}."adyen_response_message_l2" ;;
  }

  dimension: adyen_response_message_l3 {
    type: string
    sql: ${TABLE}."adyen_response_message_l3" ;;
  }

  dimension: adyen_response_message_l4 {
    type: string
    sql: ${TABLE}."adyen_response_message_l4" ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}."amount" ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}."app_version" ;;
  }

  dimension: ares_authentication_type {
    type: string
    sql: ${TABLE}."ares_authentication_type" ;;
  }

  dimension: avs_response {
    type: string
    sql: ${TABLE}."avs_response" ;;
  }

  dimension: card_bin {
    type: string
    sql: ${TABLE}."card_bin" ;;
  }

  dimension: card_gateway_id {
    type: string
    sql: ${TABLE}."card_gateway_id" ;;
  }

  dimension: conversion_rate_to_euro_fin {
    type: string
    sql: ${TABLE}."conversion_rate_to_euro_fin" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: created_at_p {
    type: string
    sql: ${TABLE}."created_at_p" ;;
  }

  dimension: created_at_source {
    type: string
    sql: ${TABLE}."created_at_source" ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }

  dimension: cvc_response_code {
    type: string
    sql: ${TABLE}."cvc_response_code" ;;
  }

  dimension: delivery_type {
    type: string
    sql: ${TABLE}."delivery_type" ;;
  }

  dimension: final_method {
    type: number
    sql: ${TABLE}."final_method" ;;
  }

  dimension: funding_source {
    type: string
    sql: ${TABLE}."funding_source" ;;
  }

  dimension: funnel_payment_state_reason {
    type: string
    sql: ${TABLE}."funnel_payment_state_reason" ;;
  }

  dimension: funnel_split_l1 {
    type: string
    sql: ${TABLE}."funnel_split_l1" ;;
  }

  dimension: funnel_split_l2 {
    type: string
    sql: ${TABLE}."funnel_split_l2" ;;
  }

  dimension: funnel_split_l3 {
    type: string
    sql: ${TABLE}."funnel_split_l3" ;;
  }

  dimension: iban {
    type: string
    sql: ${TABLE}."iban" ;;
  }

  dimension: is_suborder {
    type: string
    sql: ${TABLE}."is_suborder" ;;
  }

  dimension: issuer {
    type: string
    sql: ${TABLE}."issuer" ;;
  }

  dimension: issuer_country {
    type: string
    sql: ${TABLE}."issuer_country" ;;
  }

  dimension: liability_indicator {
    type: string
    sql: ${TABLE}."liability_indicator" ;;
  }

  dimension: meal_ticket_company {
    type: string
    sql: ${TABLE}."meal_ticket_company" ;;
  }

  dimension: meal_ticket_unique_id {
    type: string
    sql: ${TABLE}."meal_ticket_unique_id" ;;
  }

  dimension: merchant_id {
    type: string
    sql: ${TABLE}."merchant_id" ;;
  }

  dimension: merchant_reference_unique_id {
    type: string
    sql: ${TABLE}."merchant_reference_unique_id" ;;
  }

  dimension: mother_order_unique_id {
    type: string
    sql: ${TABLE}."mother_order_unique_id" ;;
  }

  dimension: online_voucher_description {
    type: string
    sql: ${TABLE}."online_voucher_description" ;;
  }

  dimension: online_voucher_order_unique_id {
    type: string
    sql: ${TABLE}."online_voucher_order_unique_id" ;;
  }

  dimension: online_voucher_title {
    type: string
    sql: ${TABLE}."online_voucher_title" ;;
  }

  dimension: online_voucher_unique_id {
    type: string
    sql: ${TABLE}."online_voucher_unique_id" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}."origin" ;;
  }

  dimension: origin_platform {
    type: string
    sql: ${TABLE}."origin_platform" ;;
  }

  dimension: payment_amount {
    type: string
    sql: ${TABLE}."payment_amount" ;;
  }

  dimension: payment_attempt_desc {
    type: number
    sql: ${TABLE}."payment_attempt_desc" ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}."payment_method" ;;
  }

  dimension: payment_method_adyen {
    type: string
    sql: ${TABLE}."payment_method_adyen" ;;
  }

  dimension: payment_method_code {
    type: string
    sql: ${TABLE}."payment_method_code" ;;
  }

  dimension: payment_source_unique_id {
    type: string
    sql: ${TABLE}."payment_source_unique_id" ;;
  }

  dimension: payment_status {
    type: string
    sql: ${TABLE}."payment_status" ;;
  }

  dimension: payment_submethod {
    type: string
    sql: ${TABLE}."payment_submethod" ;;
  }

  dimension: payment_unique_id {
    type: string
    sql: ${TABLE}."payment_unique_id" ;;
  }

  dimension: premium_origin {
    type: string
    sql: ${TABLE}."premium_origin" ;;
  }

  dimension: premium_type {
    type: string
    sql: ${TABLE}."premium_type" ;;
  }

  dimension: raw_acquirer_response {
    type: string
    sql: ${TABLE}."raw_acquirer_response" ;;
  }

  dimension: raw_acquirer_response_3ds {
    type: string
    sql: ${TABLE}."raw_acquirer_response_3ds" ;;
  }

  dimension: remember_card {
    type: string
    sql: ${TABLE}."remember_card" ;;
  }

  dimension: risk_score {
    type: string
    sql: ${TABLE}."risk_score" ;;
  }

  dimension: rreq_authentication_type {
    type: string
    sql: ${TABLE}."rreq_authentication_type" ;;
  }

  dimension: sca_exemption_requested {
    type: string
    sql: ${TABLE}."sca_exemption_requested" ;;
  }

  dimension: source_of_payment {
    type: string
    sql: ${TABLE}."source_of_payment" ;;
  }

  dimension: state_p {
    type: string
    sql: ${TABLE}."state_p" ;;
  }

  dimension: state_source {
    type: string
    sql: ${TABLE}."state_source" ;;
  }

  dimension: sub_method_code {
    type: string
    sql: ${TABLE}."sub_method_code" ;;
  }

  dimension: suborder_type {
    type: string
    sql: ${TABLE}."suborder_type" ;;
  }

  dimension: three_ds_version {
    type: string
    sql: ${TABLE}."threeDS_version" ;;
  }

  dimension: threed_authentication_response {
    type: string
    sql: ${TABLE}."threed_authentication_response" ;;
  }

  dimension: threed_directory_response {
    type: string
    sql: ${TABLE}."threed_directory_response" ;;
  }

  dimension: threeds2_fallback_directory_response {
    type: string
    sql: ${TABLE}."threeds2_fallback_directory_response" ;;
  }

  dimension: threeds_completion_indicator {
    type: string
    sql: ${TABLE}."threeds_completion_indicator" ;;
  }

  dimension: threeds_requestor_challenge_indicator {
    type: string
    sql: ${TABLE}."threeds_requestor_challenge_indicator" ;;
  }

  dimension: total_price_vat {
    type: string
    sql: ${TABLE}."total_price_vat" ;;
  }

  dimension: updated_at_p {
    type: string
    sql: ${TABLE}."updated_at_p" ;;
  }

  dimension: updated_at_source {
    type: string
    sql: ${TABLE}."updated_at_source" ;;
  }

  dimension: use_remembered_card {
    type: string
    sql: ${TABLE}."use_remembered_card" ;;
  }

  dimension: user_premium_unique_id {
    type: string
    sql: ${TABLE}."user_premium_unique_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: virtual_order_unique_id {
    type: string
    sql: ${TABLE}."virtual_order_unique_id" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
