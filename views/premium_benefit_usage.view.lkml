view: premium_benefit_usage {
  sql_table_name: "WORKSPACE_233686783"."premium_benefit_usage"
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

  dimension: delivery_fee_savings {
    type: number
    sql: ${TABLE}."delivery_fee_savings" ;;
  }

  dimension: extra_orders_under_min_price {
    type: number
    sql: ${TABLE}."extra_orders_under_min_price" ;;
  }

  dimension: free_express_count {
    type: number
    sql: ${TABLE}."free_express_count" ;;
  }

  dimension_group: month {
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
    sql: ${TABLE}."month" ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}."orders" ;;
  }

  dimension: orders_by_premium_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}."orders_by_premium_paid" ;;
  }

  dimension: orders_under_min_price {
    type: number
    sql: ${TABLE}."orders_under_min_price" ;;
  }

  dimension: premium_paid {
    type: string
    sql: ${TABLE}."premium_paid" ;;
  }

  dimension: premium_product_savings {
    type: number
    sql: ${TABLE}."premium_product_savings" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: warranty_double_compensation {
    type: number
    sql: ${TABLE}."warranty_double_compensation" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
