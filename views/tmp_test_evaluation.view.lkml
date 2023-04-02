view: tmp_test_evaluation {
  sql_table_name: "WORKSPACE_233686783"."tmp_test_evaluation"
    ;;

  dimension: ab_test_variant_code {
    type: number
    sql: ${TABLE}."ab_test_variant_code" ;;
  }

  dimension: ab_test_variant_name {
    type: string
    sql: ${TABLE}."ab_test_variant_name" ;;
  }

  dimension: conversion {
    type: string
    sql: ${TABLE}."conversion" ;;
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

  dimension: nr_euro {
    type: number
    sql: ${TABLE}."nr_euro" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."order_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: visit {
    type: string
    sql: ${TABLE}."visit" ;;
  }

  measure: count {
    type: count
    drill_fields: [ab_test_variant_name, order.courier_name, order.warehouse_name, order.delivery_point_name, order.id]
  }
}
