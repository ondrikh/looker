view: virtual_order_payment_details {
  sql_table_name: "WORKSPACE_233686783"."virtual_order_payment_details"
    ;;

  dimension: 3d_authenticated {
    type: string
    sql: ${TABLE}."3d_authenticated" ;;
  }

  dimension: 3d_offered {
    type: string
    sql: ${TABLE}."3d_offered" ;;
  }

  dimension: adyen_payment_attribute_unique_id {
    type: string
    sql: ${TABLE}."adyen_payment_attribute_unique_id" ;;
  }

  dimension: adyen_payment_unique_id {
    type: string
    sql: ${TABLE}."adyen_payment_unique_id" ;;
  }

  dimension: adyen_psp_reference {
    type: string
    sql: ${TABLE}."adyen_psp_reference" ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}."amount" ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}."app_version" ;;
  }

  dimension: card_bin {
    type: string
    sql: ${TABLE}."card_bin" ;;
  }

  dimension: card_gateway_id {
    type: string
    sql: ${TABLE}."card_gateway_id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: created_at_vo {
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
    sql: ${TABLE}."created_at_vo" ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }

  dimension: delivery_type {
    type: string
    sql: ${TABLE}."delivery_type" ;;
  }

  dimension: funding_source {
    type: string
    sql: ${TABLE}."funding_source" ;;
  }

  dimension: is_suborder {
    type: number
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

  dimension: merchant_id {
    type: string
    sql: ${TABLE}."merchant_id" ;;
  }

  dimension: mother_order_id {
    type: string
    sql: ${TABLE}."mother_order_id" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."order_id" ;;
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

  dimension: raw_acquirer_response {
    type: string
    sql: ${TABLE}."raw_acquirer_response" ;;
  }

  dimension: remember_card {
    type: string
    sql: ${TABLE}."remember_card" ;;
  }

  dimension: risk_score {
    type: string
    sql: ${TABLE}."risk_score" ;;
  }

  dimension: state_p {
    type: string
    sql: ${TABLE}."state_p" ;;
  }

  dimension: state_vo {
    type: string
    sql: ${TABLE}."state_vo" ;;
  }

  dimension: sub_method_code {
    type: string
    sql: ${TABLE}."sub_method_code" ;;
  }

  dimension: total_down_payment_vat {
    type: number
    sql: ${TABLE}."total_down_payment_vat" ;;
  }

  dimension_group: updated_at_p {
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
    sql: ${TABLE}."updated_at_p" ;;
  }

  dimension_group: updated_at_vo {
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
    sql: ${TABLE}."updated_at_vo" ;;
  }

  dimension: use_remembered_card {
    type: string
    sql: ${TABLE}."use_remembered_card" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
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
    drill_fields: [user.id, order.courier_name, order.warehouse_name, order.delivery_point_name, order.id]
  }
}
