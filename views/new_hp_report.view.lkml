view: new_hp_report {
  sql_table_name: "WORKSPACE_233686783"."new_hp_report"
    ;;

  dimension: aov_gr_all_sources {
    type: number
    sql: ${TABLE}."aov_gr_all_sources" ;;
  }

  dimension: aov_gr_hp {
    type: number
    sql: ${TABLE}."aov_gr_hp" ;;
  }

  dimension: avg_l2_all_sources {
    type: number
    sql: ${TABLE}."avg_L2_all_sources" ;;
  }

  dimension: avg_l2_hp {
    type: number
    sql: ${TABLE}."avg_L2_hp" ;;
  }

  dimension: conversion_rate_orders_hp {
    type: number
    sql: ${TABLE}."conversion_rate_orders_hp" ;;
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}."customer_type" ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}."group_name" ;;
  }

  dimension: nr_sum_all_sources {
    type: number
    sql: ${TABLE}."nr_sum_all_sources" ;;
  }

  dimension: nr_sum_hp {
    type: number
    sql: ${TABLE}."nr_sum_hp" ;;
  }

  dimension: number_of_customers_all_sources {
    type: number
    sql: ${TABLE}."number_of_customers_all_sources" ;;
  }

  dimension: number_of_customers_hp {
    type: number
    sql: ${TABLE}."number_of_customers_hp" ;;
  }

  dimension: number_of_orders_all_sources {
    type: number
    sql: ${TABLE}."number_of_orders_all_sources" ;;
  }

  dimension: number_of_orders_hp {
    type: number
    sql: ${TABLE}."number_of_orders_hp" ;;
  }

  dimension: order_date {
    type: string
    sql: ${TABLE}."order_date" ;;
  }

  dimension: user_count_per_group {
    type: number
    sql: ${TABLE}."user_count_per_group" ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name]
  }
}
