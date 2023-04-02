view: customer_profile_orders {
  sql_table_name: "WORKSPACE_233686783"."customer_profile_orders"
    ;;

  dimension: 2nd_order {
    type: string
    sql: ${TABLE}."2nd_order" ;;
  }

  dimension: 2nd_order_dsfo {
    type: number
    sql: ${TABLE}."2nd_order_dsfo" ;;
  }

  dimension: conversion_rate_to_euro {
    type: number
    sql: ${TABLE}."conversion_rate_to_euro" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: customer_profile_filled {
    type: string
    sql: ${TABLE}."customer_profile_filled" ;;
  }

  dimension: days_since_first_order {
    type: number
    sql: ${TABLE}."days_since_first_order" ;;
  }

  dimension: gr {
    type: number
    sql: ${TABLE}."gr" ;;
  }

  dimension: gr_cart_nbo {
    type: number
    sql: ${TABLE}."gr_cart_nbo" ;;
  }

  dimension: gr_homepage_grid {
    type: number
    value_format_name: id
    sql: ${TABLE}."gr_homepage_grid" ;;
  }

  dimension: gr_search_whisper {
    type: number
    sql: ${TABLE}."gr_search_whisper" ;;
  }

  dimension: gr_upsell_basket {
    type: number
    sql: ${TABLE}."gr_upsell_basket" ;;
  }

  dimension: gr_upsell_checkout {
    type: number
    sql: ${TABLE}."gr_upsell_checkout" ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: l2_categories {
    type: number
    sql: ${TABLE}."l2_categories" ;;
  }

  dimension_group: order_deliver {
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
    sql: ${TABLE}."order_deliver_at" ;;
  }

  dimension: order_sequence {
    type: string
    sql: ${TABLE}."order_sequence" ;;
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
