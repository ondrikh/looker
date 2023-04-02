view: source_overview_ab_test {
  sql_table_name: "WORKSPACE_233686783"."source_overview_ab_test"
    ;;

  dimension: conversion_rate_to_euro {
    type: string
    sql: ${TABLE}."conversion_rate_to_euro" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: deliver_at {
    type: string
    sql: ${TABLE}."deliver_at" ;;
  }

  dimension: enabled_since {
    type: string
    sql: ${TABLE}."enabled_since" ;;
  }

  dimension: enabled_till {
    type: string
    sql: ${TABLE}."enabled_till" ;;
  }

  dimension: feature_name {
    type: string
    sql: ${TABLE}."feature_name" ;;
  }

  dimension: feature_user_group {
    type: string
    sql: ${TABLE}."feature_user_group" ;;
  }

  dimension: is_revenue {
    type: string
    sql: ${TABLE}."is_revenue" ;;
  }

  dimension: master_order_unique_id {
    type: string
    sql: ${TABLE}."master_order_unique_id" ;;
  }

  dimension: order_finished_at {
    type: string
    sql: ${TABLE}."order_finished_at" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension_group: picking_item_created {
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
    sql: ${TABLE}."picking_item_created_at" ;;
  }

  dimension: picking_item_unique_id {
    type: string
    sql: ${TABLE}."picking_item_unique_id" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."source" ;;
  }

  dimension: source_api_type {
    type: string
    sql: ${TABLE}."source_api_type" ;;
  }

  dimension: source_category_id {
    type: string
    sql: ${TABLE}."source_category_id" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: unit_sell_price_excl_vat {
    type: string
    sql: ${TABLE}."unit_sell_price_excl_vat" ;;
  }

  dimension: unit_sell_price_incl_vat {
    type: string
    sql: ${TABLE}."unit_sell_price_incl_vat" ;;
  }

  dimension: units {
    type: string
    sql: ${TABLE}."units" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [feature_name]
  }
}
