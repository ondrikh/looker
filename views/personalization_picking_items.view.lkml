view: personalization_picking_items {
  sql_table_name: "WORKSPACE_233686783"."personalization_picking_items"
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

  dimension_group: date {
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
    sql: ${TABLE}."date" ;;
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

  dimension: gr {
    type: number
    sql: ${TABLE}."gr" ;;
  }

  dimension: items_count {
    type: number
    sql: ${TABLE}."items_count" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."l1_category_name" ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}."l2_category_name" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."l3_category_name" ;;
  }

  dimension: master_order_unique_id {
    type: string
    sql: ${TABLE}."master_order_unique_id" ;;
  }

  dimension: nr {
    type: number
    sql: ${TABLE}."nr" ;;
  }

  dimension: product_category_source {
    type: string
    sql: ${TABLE}."product_category_source" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."source" ;;
  }

  dimension: source_category_unique_id {
    type: string
    sql: ${TABLE}."source_category_unique_id" ;;
  }

  dimension: source_group {
    type: string
    sql: ${TABLE}."source_group" ;;
  }

  dimension_group: time {
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
    sql: ${TABLE}."time" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: web_finished_order {
    type: string
    sql: ${TABLE}."web_finished_order" ;;
  }

  dimension: web_picked_item {
    type: string
    sql: ${TABLE}."web_picked_item" ;;
  }

  measure: count {
    type: count
    drill_fields: [l1_category_name, l3_category_name, l2_category_name]
  }
}
