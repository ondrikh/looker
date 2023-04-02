view: source_overview_agg {
  sql_table_name: "WORKSPACE_233686783"."source_overview_agg"
    ;;

  dimension: conversion_rate_to_euro {
    type: number
    sql: ${TABLE}."conversion_rate_to_euro" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: deliver {
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
    sql: ${TABLE}."deliver_at" ;;
  }

  dimension: master_order_unique_id {
    type: string
    sql: ${TABLE}."master_order_unique_id" ;;
  }

  dimension_group: order {
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
    sql: ${TABLE}."order_time" ;;
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

  dimension: unit_sell_price_excl_vat {
    type: number
    sql: ${TABLE}."unit_sell_price_excl_vat" ;;
  }

  dimension: unit_sell_price_incl_vat {
    type: number
    sql: ${TABLE}."unit_sell_price_incl_vat" ;;
  }

  dimension: units {
    type: number
    sql: ${TABLE}."units" ;;
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
