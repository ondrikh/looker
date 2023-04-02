view: web_app_filters {
  sql_table_name: "WORKSPACE_233686783"."web_app_filters"
    ;;

  dimension: category_id {
    type: string
    sql: ${TABLE}."category_id" ;;
  }

  dimension: category_type {
    type: string
    sql: ${TABLE}."category_type" ;;
  }

  dimension: category_unique_id {
    type: string
    sql: ${TABLE}."category_unique_id" ;;
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

  dimension: device_id {
    type: string
    sql: ${TABLE}."device_id" ;;
  }

  dimension: filter_action {
    type: string
    sql: ${TABLE}."filter_action" ;;
  }

  dimension: filter_key {
    type: string
    sql: ${TABLE}."filter_key" ;;
  }

  dimension: filter_value {
    type: string
    sql: ${TABLE}."filter_value" ;;
  }

  dimension: gr {
    type: number
    sql: ${TABLE}."GR" ;;
  }

  dimension: is_first_order {
    type: number
    sql: ${TABLE}."is_first_order" ;;
  }

  dimension: items_count {
    type: number
    sql: ${TABLE}."items_count" ;;
  }

  dimension: l1_category_id {
    type: string
    sql: ${TABLE}."L1_category_id" ;;
  }

  dimension: l1_category_name_en {
    type: string
    sql: ${TABLE}."L1_category_name_en" ;;
  }

  dimension: l2_category_id {
    type: string
    sql: ${TABLE}."L2_category_id" ;;
  }

  dimension: l2_category_name_en {
    type: string
    sql: ${TABLE}."L2_category_name_en" ;;
  }

  dimension: l3_category_id {
    type: string
    sql: ${TABLE}."L3_category_id" ;;
  }

  dimension: l3_category_name_en {
    type: string
    sql: ${TABLE}."L3_category_name_en" ;;
  }

  dimension: l4_category_id {
    type: string
    sql: ${TABLE}."L4_category_id" ;;
  }

  dimension: l4_category_name_en {
    type: string
    sql: ${TABLE}."L4_category_name_en" ;;
  }

  dimension: nr {
    type: number
    sql: ${TABLE}."NR" ;;
  }

  dimension: order_platform {
    type: string
    sql: ${TABLE}."order_platform" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}."origin" ;;
  }

  dimension: sku_count {
    type: number
    sql: ${TABLE}."sku_count" ;;
  }

  dimension: used_filters_that_day {
    type: number
    sql: ${TABLE}."used_filters_that_day" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
