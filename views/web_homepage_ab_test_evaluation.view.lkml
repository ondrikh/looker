view: web_homepage_ab_test_evaluation {
  sql_table_name: "WORKSPACE_233686783"."web_homepage_ab_test_evaluation"
    ;;

  dimension: ab_test_variant {
    type: string
    sql: ${TABLE}."ab_test_variant" ;;
  }

  dimension: conversion_rate_to_euro_fin {
    type: number
    sql: ${TABLE}."conversion_rate_to_euro_fin" ;;
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

  dimension: is_first_order {
    type: number
    sql: ${TABLE}."is_first_order" ;;
  }

  dimension: nr {
    type: number
    sql: ${TABLE}."nr" ;;
  }

  dimension: nr_eur {
    type: number
    sql: ${TABLE}."nr_eur" ;;
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

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: visit_number {
    type: number
    sql: ${TABLE}."visitNumber" ;;
  }

  dimension: visit_start_time {
    type: string
    sql: ${TABLE}."visitStartTime" ;;
  }

  dimension: visit_unique_id {
    type: string
    sql: ${TABLE}."visit_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [user.id, order.courier_name, order.warehouse_name, order.delivery_point_name, order.id]
  }
}
