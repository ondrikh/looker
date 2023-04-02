view: commercial_bonuses_pricing {
  sql_table_name: "WORKSPACE_233686783"."commercial_bonuses_pricing"
    ;;

  dimension: avg_buy_price_excl_vat {
    type: number
    sql: ${TABLE}."avg_buy_price_excl_vat" ;;
  }

  dimension: avg_buy_price_incl_vat {
    type: number
    sql: ${TABLE}."avg_buy_price_incl_vat" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
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

  dimension: credit_note_bonus {
    type: number
    sql: ${TABLE}."credit_note_bonus" ;;
  }

  dimension: credit_note_bonuss {
    type: number
    sql: ${TABLE}."credit_note_bonuss" ;;
  }

  dimension: data_bonus {
    type: number
    sql: ${TABLE}."data_bonus" ;;
  }

  dimension: data_bonuss {
    type: number
    sql: ${TABLE}."data_bonuss" ;;
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

  dimension: enabled_and_available_hours {
    type: number
    sql: ${TABLE}."enabled_and_available_hours" ;;
  }

  dimension: item_ean {
    type: string
    sql: ${TABLE}."item_ean" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}."L2_category_name" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."L3_category_name" ;;
  }

  dimension: logistic_bonus {
    type: number
    sql: ${TABLE}."logistic_bonus" ;;
  }

  dimension: logistic_bonuss {
    type: number
    sql: ${TABLE}."logistic_bonuss" ;;
  }

  dimension: marketing_bonus {
    type: number
    sql: ${TABLE}."marketing_bonus" ;;
  }

  dimension: marketing_bonuss {
    type: number
    sql: ${TABLE}."marketing_bonuss" ;;
  }

  dimension: on_top_bonus {
    type: number
    sql: ${TABLE}."on_top_bonus" ;;
  }

  dimension: on_top_bonuss {
    type: number
    sql: ${TABLE}."on_top_bonuss" ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}."orders" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: received_items_invoice_number {
    type: string
    sql: ${TABLE}."received_items_invoice_number" ;;
  }

  dimension: received_items_sum_amount {
    type: number
    sql: ${TABLE}."received_items_sum_amount" ;;
  }

  dimension: received_items_sum_gross_value {
    type: number
    sql: ${TABLE}."received_items_sum_gross_value" ;;
  }

  dimension: received_items_sum_net_value {
    type: number
    sql: ${TABLE}."received_items_sum_net_value" ;;
  }

  dimension: received_items_type {
    type: string
    sql: ${TABLE}."received_items_type" ;;
  }

  dimension: received_items_virtual {
    type: string
    sql: ${TABLE}."received_items_virtual" ;;
  }

  dimension: shrink_reason {
    type: string
    sql: ${TABLE}."shrink_reason" ;;
  }

  dimension: shrink_sum_amount {
    type: number
    sql: ${TABLE}."shrink_sum_amount" ;;
  }

  dimension: shrink_sum_gross_value {
    type: number
    sql: ${TABLE}."shrink_sum_gross_value" ;;
  }

  dimension: shrink_sum_net_value {
    type: number
    sql: ${TABLE}."shrink_sum_net_value" ;;
  }

  dimension: supplier_id {
    type: string
    sql: ${TABLE}."supplier_id" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: supplier_vat_no {
    type: string
    sql: ${TABLE}."supplier_vat_no" ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}."transaction_type" ;;
  }

  dimension: transactions_actions_reason {
    type: string
    sql: ${TABLE}."transactions_actions_reason" ;;
  }

  dimension: transactions_actions_type {
    type: string
    sql: ${TABLE}."transactions_actions_type" ;;
  }

  dimension: transactions_sum_count {
    type: number
    sql: ${TABLE}."transactions_sum_count" ;;
  }

  dimension: transactions_sum_count_with_unit_weight {
    type: number
    sql: ${TABLE}."transactions_sum_count_with_unit_weight" ;;
  }

  dimension: transactions_sum_gr {
    type: number
    sql: ${TABLE}."transactions_sum_GR" ;;
  }

  dimension: transactions_sum_gross_cogs {
    type: number
    sql: ${TABLE}."transactions_sum_gross_COGS" ;;
  }

  dimension: transactions_sum_net_cogs {
    type: number
    sql: ${TABLE}."transactions_sum_net_COGS" ;;
  }

  dimension: transactions_sum_net_cogs_with_bonus {
    type: number
    sql: ${TABLE}."transactions_sum_net_COGS_with_bonus" ;;
  }

  dimension: transactions_sum_nr {
    type: number
    sql: ${TABLE}."transactions_sum_NR" ;;
  }

  dimension: transactions_type {
    type: string
    sql: ${TABLE}."transactions_type" ;;
  }

  dimension: turnover_bonus {
    type: string
    sql: ${TABLE}."turnover_bonus" ;;
  }

  dimension: turnover_bonuss {
    type: number
    sql: ${TABLE}."turnover_bonuss" ;;
  }

  measure: count {
    type: count
    drill_fields: [l3_category_name, supplier_name, l1_category_name, l2_category_name, product_name]
  }
}
