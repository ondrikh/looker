view: aggregated_transaction_in_last_30_days {
  sql_table_name: "WORKSPACE_233686783"."aggregated_transaction_in_last_30_days"
    ;;

  dimension: avg_daily_net_cogs {
    type: number
    sql: ${TABLE}."avg_daily_net_COGS" ;;
  }

  dimension: avg_daily_nr {
    type: number
    sql: ${TABLE}."avg_daily_NR" ;;
  }

  dimension: avg_daily_packages {
    type: number
    sql: ${TABLE}."avg_daily_packages" ;;
  }

  dimension: buyers_in_last_30_days_per_id_warehouse_inventory {
    type: number
    value_format_name: id
    sql: ${TABLE}."buyers_in_last_30_days_per_id_warehouse_inventory" ;;
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

  dimension: net_cogs_last_30 {
    type: number
    sql: ${TABLE}."net_COGS_last_30" ;;
  }

  dimension: nr_last_30 {
    type: number
    sql: ${TABLE}."NR_last_30" ;;
  }

  dimension: packages_last_30 {
    type: number
    sql: ${TABLE}."packages_last_30" ;;
  }

  dimension: transactions_sum_net_cogs_with_bonus_last_30 {
    type: number
    sql: ${TABLE}."transactions_sum_net_COGS_with_bonus_last_30" ;;
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

  measure: count {
    type: count
    drill_fields: [warehouse_inventory.warehouse_name, warehouse_inventory.id, warehouse_inventory.country_of_origin_name, warehouse_inventory.primary_supplier_name]
  }
}
