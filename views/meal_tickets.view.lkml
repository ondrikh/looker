view: meal_tickets {
  sql_table_name: "WORKSPACE_233686783"."meal_tickets"
    ;;
  drill_fields: [meal_ticket_id]

  dimension: meal_ticket_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."meal_ticket_id" ;;
  }

  dimension: 3d_authenticated {
    type: string
    sql: ${TABLE}."3d_authenticated" ;;
  }

  dimension: 3d_offered {
    type: string
    sql: ${TABLE}."3d_offered" ;;
  }

  dimension: adyen_payment_method {
    type: string
    sql: ${TABLE}."adyen_payment_method" ;;
  }

  dimension: adyen_payment_unique_id {
    type: string
    sql: ${TABLE}."adyen_payment_unique_id" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."amount" ;;
  }

  dimension: card_bin {
    type: string
    sql: ${TABLE}."card_bin" ;;
  }

  dimension: card_gateway_id {
    type: number
    sql: ${TABLE}."card_gateway_id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }

  dimension: funding_source {
    type: string
    sql: ${TABLE}."funding_source" ;;
  }

  dimension: iban {
    type: string
    sql: ${TABLE}."iban" ;;
  }

  dimension: issuer {
    type: string
    sql: ${TABLE}."issuer" ;;
  }

  dimension: merchant_name {
    type: string
    sql: ${TABLE}."merchant_name" ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}."payment_method" ;;
  }

  dimension: payment_method_code {
    type: number
    sql: ${TABLE}."payment_method_code" ;;
  }

  dimension: payment_state {
    type: string
    sql: ${TABLE}."payment_state" ;;
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

  dimension_group: payment_updated {
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
    sql: ${TABLE}."payment_updated_at" ;;
  }

  dimension: psp_reference {
    type: string
    sql: ${TABLE}."psp_reference" ;;
  }

  dimension: raw_acquirer_response {
    type: string
    sql: ${TABLE}."raw_acquirer_response" ;;
  }

  dimension: remember_card {
    type: number
    sql: ${TABLE}."remember_card" ;;
  }

  dimension: risk_score {
    type: number
    sql: ${TABLE}."risk_score" ;;
  }

  dimension: transaction_finished {
    type: number
    sql: ${TABLE}."transaction_finished" ;;
  }

  dimension: use_remembered_card {
    type: number
    sql: ${TABLE}."use_remembered_card" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [meal_ticket_id, merchant_name, user.id]
  }
}
