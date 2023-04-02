view: aggregated_transaction_pricing_test {
  sql_table_name: "WORKSPACE_233686783"."aggregated_transaction_pricing_test"
    ;;

  dimension: control_category {
    type: string
    sql: ${TABLE}."control_category" ;;
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

  dimension: data_bonus {
    type: number
    sql: ${TABLE}."data_bonus" ;;
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

  dimension_group: first_replenishment {
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
    sql: ${TABLE}."first_replenishment_at" ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}."group_name" ;;
  }

  dimension: h2h_pair_id {
    type: string
    sql: ${TABLE}."h2h_pair_id" ;;
  }

  dimension: is_in_test {
    type: string
    sql: ${TABLE}."is_in_test" ;;
  }

  dimension: is_test {
    type: string
    sql: ${TABLE}."is_test" ;;
  }

  dimension: logistic_bonus {
    type: number
    sql: ${TABLE}."logistic_bonus" ;;
  }

  dimension: marketing_bonus {
    type: number
    sql: ${TABLE}."marketing_bonus" ;;
  }

  dimension: on_top_bonus {
    type: number
    sql: ${TABLE}."on_top_bonus" ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}."orders" ;;
  }

  dimension: pair_name {
    type: string
    sql: ${TABLE}."pair_name" ;;
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

  dimension: rule_type {
    type: string
    sql: ${TABLE}."rule_type" ;;
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

  dimension: test_category {
    type: string
    sql: ${TABLE}."test_category" ;;
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
    type: number
    sql: ${TABLE}."turnover_bonus" ;;
  }

  dimension: upload_to_tableau {
    type: string
    sql: ${TABLE}."upload_to_tableau" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_inventory_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."warehouse_inventory_id" ;;
  }

  dimension: warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."warehouse_inventory_unique_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      group_name,
      pair_name,
      supplier_name,
      warehouse_name,
      warehouse_inventory.warehouse_name,
      warehouse_inventory.id,
      warehouse_inventory.country_of_origin_name,
      warehouse_inventory.primary_supplier_name
    ]
  }
}
