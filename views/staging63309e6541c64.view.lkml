view: staging63309e6541c64 {
  sql_table_name: "WORKSPACE_233686783"."staging63309e6541c64"
    ;;

  dimension: apa_payment_status {
    type: string
    sql: ${TABLE}."apa_payment_status" ;;
  }

  dimension: apa_payment_status_history_id {
    type: string
    sql: ${TABLE}."apa_payment_status_history_id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: courier_id {
    type: string
    sql: ${TABLE}."courier_id" ;;
  }

  dimension: courier_name {
    type: string
    sql: ${TABLE}."courier_name" ;;
  }

  dimension: courier_unique_id {
    type: string
    sql: ${TABLE}."courier_unique_id" ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}."customer_name" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension_group: order_delivered {
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
    sql: ${TABLE}."order_delivered_at" ;;
  }

  dimension: order_finally_paid_by {
    type: string
    sql: ${TABLE}."order_finally_paid_by" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."order_id" ;;
  }

  dimension: order_payment_method_code_final {
    type: number
    sql: ${TABLE}."order_payment_method_code_final" ;;
  }

  dimension: order_payment_method_code_original {
    type: number
    sql: ${TABLE}."order_payment_method_code_original" ;;
  }

  dimension: order_price {
    type: number
    sql: ${TABLE}."order_price" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension: paid_price {
    type: number
    sql: ${TABLE}."paid_price" ;;
  }

  dimension: payment_attempt_number {
    type: number
    sql: ${TABLE}."payment_attempt_number" ;;
  }

  dimension: payment_attempts {
    type: number
    sql: ${TABLE}."payment_attempts" ;;
  }

  dimension: payment_id {
    type: string
    sql: ${TABLE}."payment_id" ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}."payment_method" ;;
  }

  dimension: payment_method_change_type {
    type: string
    sql: ${TABLE}."payment_method_change_type" ;;
  }

  dimension_group: payment_method_changed {
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
    sql: ${TABLE}."payment_method_changed_at" ;;
  }

  dimension: payment_method_code {
    type: number
    sql: ${TABLE}."payment_method_code" ;;
  }

  dimension: payment_state {
    type: string
    sql: ${TABLE}."payment_state" ;;
  }

  dimension: payment_submethod {
    type: string
    sql: ${TABLE}."payment_submethod" ;;
  }

  dimension: payment_submethod_code {
    type: number
    sql: ${TABLE}."payment_submethod_code" ;;
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

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      warehouse_name,
      customer_name,
      courier_name,
      order.courier_name,
      order.warehouse_name,
      order.delivery_point_name,
      order.id,
      user.id
    ]
  }
}
