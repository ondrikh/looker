view: adyen_transmissions_capture_aggregated {
  sql_table_name: "WORKSPACE_233686783"."adyen_transmissions_capture_aggregated"
    ;;

  dimension: adyen_payment_method {
    type: string
    sql: ${TABLE}."adyen_payment_method" ;;
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

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: created_at_atr {
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
    sql: ${TABLE}."created_at_atr" ;;
  }

  dimension: created_by_unique_id {
    type: string
    sql: ${TABLE}."created_by_unique_id" ;;
  }

  dimension: merchant_reference_unique_id {
    type: string
    sql: ${TABLE}."merchant_reference_unique_id" ;;
  }

  dimension: payments_unique_id {
    type: string
    sql: ${TABLE}."payments_unique_id" ;;
  }

  dimension: psp_reference_id {
    type: string
    sql: ${TABLE}."psp_reference_id" ;;
  }

  dimension: transmission_level_max {
    type: number
    sql: ${TABLE}."transmission_level_max" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
