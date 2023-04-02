view: time_on_checkout_payment_details {
  sql_table_name: "WORKSPACE_233686783"."time_on_checkout_payment_details"
    ;;

  dimension: 3d_authenticated {
    type: string
    sql: ${TABLE}."3d_authenticated" ;;
  }

  dimension: 3d_offered {
    type: string
    sql: ${TABLE}."3d_offered" ;;
  }

  dimension: adyen_payment_unique_id {
    type: string
    sql: ${TABLE}."adyen_payment_unique_id" ;;
  }

  dimension: adyen_psp_reference {
    type: string
    sql: ${TABLE}."adyen_psp_reference" ;;
  }

  dimension: attempt_number {
    type: number
    sql: ${TABLE}."attempt_number" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."date" ;;
  }

  dimension: full_visitor_id {
    type: string
    sql: ${TABLE}."fullVisitorId" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}."payment_method" ;;
  }

  dimension: payment_method_code {
    type: string
    sql: ${TABLE}."payment_method_code" ;;
  }

  dimension: payment_status {
    type: string
    sql: ${TABLE}."payment_status" ;;
  }

  dimension: payment_submethod {
    type: string
    sql: ${TABLE}."payment_submethod" ;;
  }

  dimension: payment_time_seconds {
    type: number
    sql: ${TABLE}."payment_time_seconds" ;;
  }

  dimension: payment_unique_id {
    type: string
    sql: ${TABLE}."payment_unique_id" ;;
  }

  dimension: remember_card {
    type: yesno
    sql: ${TABLE}."remember_card" ;;
  }

  dimension: state_vo {
    type: string
    sql: ${TABLE}."state_vo" ;;
  }

  dimension: sub_method_code {
    type: string
    sql: ${TABLE}."sub_method_code" ;;
  }

  dimension: time_on_checkout_seconds {
    type: number
    sql: ${TABLE}."time_on_checkout_seconds" ;;
  }

  dimension: total_down_payment_vat {
    type: number
    sql: ${TABLE}."total_down_payment_vat" ;;
  }

  dimension: use_remembered_card {
    type: yesno
    sql: ${TABLE}."use_remembered_card" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: virtual_order_payment_unique_id {
    type: string
    sql: ${TABLE}."virtual_order_payment_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
