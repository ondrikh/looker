view: sailthrou_ad_hoc_flow_self_service_evaluation {
  sql_table_name: "WORKSPACE_233686783"."sailthrou_AdHoc_Flow_self_service_evaluation"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date_added {
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
    sql: ${TABLE}."date_added" ;;
  }

  dimension: days_since_previous {
    type: string
    sql: ${TABLE}."days_since_previous" ;;
  }

  dimension: gr {
    type: string
    sql: ${TABLE}."gr" ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: list {
    type: string
    sql: ${TABLE}."list" ;;
  }

  dimension: list_name {
    type: string
    sql: ${TABLE}."list_name" ;;
  }

  dimension: master_order_unique_id {
    type: string
    sql: ${TABLE}."master_order_unique_id" ;;
  }

  dimension: order_arpu_level {
    type: string
    sql: ${TABLE}."order_arpu_level" ;;
  }

  dimension: order_by_premium_origin {
    type: string
    sql: ${TABLE}."order_by_premium_origin" ;;
  }

  dimension: order_by_premium_paid_type {
    type: string
    sql: ${TABLE}."order_by_premium_paid_type" ;;
  }

  dimension: order_by_premium_user {
    type: string
    sql: ${TABLE}."order_by_premium_user" ;;
  }

  dimension: order_by_premium_user_paid {
    type: string
    sql: ${TABLE}."order_by_premium_user_paid" ;;
  }

  dimension: order_main_funnel {
    type: string
    sql: ${TABLE}."order_main_funnel" ;;
  }

  dimension: order_sequence {
    type: string
    sql: ${TABLE}."order_sequence" ;;
  }

  dimension: order_user_unique_id {
    type: string
    sql: ${TABLE}."order_user_unique_id" ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}."time" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [list_name]
  }
}
