view: adyen_threedsecure_authentication {
  sql_table_name: "WORKSPACE_233686783"."adyen_threedsecure_authentication"
    ;;

  dimension: acquirer {
    type: string
    sql: ${TABLE}."acquirer" ;;
  }

  dimension: acquirer_response {
    type: string
    sql: ${TABLE}."acquirer_response" ;;
  }

  dimension: acs_challenge_mandated {
    type: string
    sql: ${TABLE}."acs_challenge_mandated" ;;
  }

  dimension: acs_operator_id {
    type: string
    sql: ${TABLE}."acs_operator_id" ;;
  }

  dimension: acs_reference_number {
    type: string
    sql: ${TABLE}."acs_reference_number" ;;
  }

  dimension: acs_trans_id {
    type: string
    sql: ${TABLE}."acs_trans_id" ;;
  }

  dimension: acs_url {
    type: string
    sql: ${TABLE}."acs_url" ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}."amount" ;;
  }

  dimension: ares_authentication_type {
    type: string
    sql: ${TABLE}."ares_authentication_type" ;;
  }

  dimension: authentication_mid {
    type: string
    sql: ${TABLE}."authentication_mid" ;;
  }

  dimension: authentication_only {
    type: string
    sql: ${TABLE}."authentication_only" ;;
  }

  dimension: authorisation_mid {
    type: string
    sql: ${TABLE}."authorisation_mid" ;;
  }

  dimension: avs_response {
    type: string
    sql: ${TABLE}."avs_response" ;;
  }

  dimension: bin {
    type: string
    sql: ${TABLE}."bin" ;;
  }

  dimension: card_holder_info {
    type: string
    sql: ${TABLE}."card_holder_info" ;;
  }

  dimension: challenge_cancel {
    type: string
    sql: ${TABLE}."challenge_cancel" ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}."company" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: creation {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."creation_date" ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }

  dimension: cvc_response_code {
    type: string
    sql: ${TABLE}."cvc_response_code" ;;
  }

  dimension: cvc_supplied {
    type: string
    sql: ${TABLE}."cvc_supplied" ;;
  }

  dimension: data_only {
    type: string
    sql: ${TABLE}."data_only" ;;
  }

  dimension: device_channel {
    type: string
    sql: ${TABLE}."device_channel" ;;
  }

  dimension: directory_server {
    type: string
    sql: ${TABLE}."directory_server" ;;
  }

  dimension: dstransid {
    type: string
    sql: ${TABLE}."dstransid" ;;
  }

  dimension: eci {
    type: string
    sql: ${TABLE}."eci" ;;
  }

  dimension: error_code {
    type: string
    sql: ${TABLE}."error_code" ;;
  }

  dimension: error_component {
    type: string
    sql: ${TABLE}."error_component" ;;
  }

  dimension: error_description {
    type: string
    sql: ${TABLE}."error_description" ;;
  }

  dimension: error_detail {
    type: string
    sql: ${TABLE}."error_detail" ;;
  }

  dimension: error_message_type {
    type: string
    sql: ${TABLE}."error_message_type" ;;
  }

  dimension: index {
    type: string
    sql: ${TABLE}."index" ;;
  }

  dimension: interaction_counter {
    type: string
    sql: ${TABLE}."interaction_counter" ;;
  }

  dimension: issuer_country_code {
    type: string
    sql: ${TABLE}."issuer_country_code" ;;
  }

  dimension: issuer_name {
    type: string
    sql: ${TABLE}."issuer_name" ;;
  }

  dimension: iteraction_row_desc {
    type: number
    sql: ${TABLE}."iteraction_row_desc" ;;
  }

  dimension: liability_shift {
    type: string
    sql: ${TABLE}."liability_shift" ;;
  }

  dimension: merchant {
    type: string
    sql: ${TABLE}."merchant" ;;
  }

  dimension: merchant_reference {
    type: string
    sql: ${TABLE}."merchant_reference" ;;
  }

  dimension: merchant_reference_unique_id {
    type: string
    sql: ${TABLE}."merchant_reference_unique_id" ;;
  }

  dimension: message_category {
    type: string
    sql: ${TABLE}."message_category" ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}."payment_method" ;;
  }

  dimension: pspreference {
    type: string
    sql: ${TABLE}."pspreference" ;;
  }

  dimension: raw_acquirer_response {
    type: string
    sql: ${TABLE}."raw_acquirer_response" ;;
  }

  dimension: recurring_processing_model {
    type: string
    sql: ${TABLE}."recurring_processing_model" ;;
  }

  dimension_group: report {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."report_date" ;;
  }

  dimension: results_status {
    type: string
    sql: ${TABLE}."results_status" ;;
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

  dimension: sca_retry {
    type: string
    sql: ${TABLE}."sca_retry" ;;
  }

  dimension: shopper_country {
    type: string
    sql: ${TABLE}."shopper_country" ;;
  }

  dimension: shopper_email {
    type: string
    sql: ${TABLE}."shopper_email" ;;
  }

  dimension: shopper_interaction {
    type: string
    sql: ${TABLE}."shopper_interaction" ;;
  }

  dimension: shopper_ip {
    type: string
    sql: ${TABLE}."shopper_ip" ;;
  }

  dimension: shopper_name {
    type: string
    sql: ${TABLE}."shopper_name" ;;
  }

  dimension: shopper_reference {
    type: string
    sql: ${TABLE}."shopper_reference" ;;
  }

  dimension: shopper_reference_id {
    type: string
    sql: ${TABLE}."shopper_reference_id" ;;
  }

  dimension: shopper_reference_unique_id {
    type: string
    sql: ${TABLE}."shopper_reference_unique_id" ;;
  }

  dimension: three_ds2_redirect {
    type: string
    sql: ${TABLE}."threeDS2_redirect" ;;
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

  dimension: threeds2_fallback {
    type: string
    sql: ${TABLE}."threeds2_fallback" ;;
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

  dimension: threeds_requestor_name {
    type: string
    sql: ${TABLE}."threeds_requestor_name" ;;
  }

  dimension: threeds_server_transaction_id {
    type: string
    sql: ${TABLE}."threeds_server_transaction_id" ;;
  }

  dimension: time_zone {
    type: string
    sql: ${TABLE}."time_zone" ;;
  }

  dimension: trans_status_reason {
    type: string
    sql: ${TABLE}."trans_status_reason" ;;
  }

  measure: count {
    type: count
    drill_fields: [issuer_name, shopper_name, threeds_requestor_name]
  }
}
