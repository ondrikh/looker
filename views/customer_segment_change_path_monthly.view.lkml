view: customer_segment_change_path_monthly {
  sql_table_name: "WORKSPACE_233686783"."customer_segment_change_path_monthly"
    ;;

  dimension: activity_last_60days_nm {
    type: string
    sql: ${TABLE}."activity_last_60days_nm" ;;
  }

  dimension: activity_last_60days_tm {
    type: string
    sql: ${TABLE}."activity_last_60days_tm" ;;
  }

  dimension: aov_60dslo {
    type: number
    sql: ${TABLE}."aov_60dslo" ;;
  }

  dimension: aov_60dslo_nm {
    type: number
    sql: ${TABLE}."aov_60dslo_nm" ;;
  }

  dimension: aov_90dslo {
    type: number
    sql: ${TABLE}."aov_90dslo" ;;
  }

  dimension: aov_90dslo_nm {
    type: number
    sql: ${TABLE}."aov_90dslo_nm" ;;
  }

  dimension: arpu_level {
    type: string
    sql: ${TABLE}."arpu_level" ;;
  }

  dimension: arpu_level_nm {
    type: string
    sql: ${TABLE}."arpu_level_nm" ;;
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
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."date" ;;
  }

  dimension_group: date_nm {
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
    sql: ${TABLE}."date_nm" ;;
  }

  dimension: days_till_churned {
    type: number
    sql: ${TABLE}."days_till_churned" ;;
  }

  dimension: dsfo {
    type: number
    sql: ${TABLE}."dsfo" ;;
  }

  dimension: dsfo_nm {
    type: number
    sql: ${TABLE}."dsfo_nm" ;;
  }

  dimension: dslo {
    type: number
    sql: ${TABLE}."dslo" ;;
  }

  dimension: dslo_nm {
    type: number
    sql: ${TABLE}."dslo_nm" ;;
  }

  dimension: finished_onboarding {
    type: string
    sql: ${TABLE}."finished_onboarding" ;;
  }

  dimension_group: fo {
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
    sql: ${TABLE}."fo_date" ;;
  }

  dimension: gr_60days {
    type: number
    sql: ${TABLE}."gr_60days" ;;
  }

  dimension: gr_60days_nm {
    type: number
    sql: ${TABLE}."gr_60days_nm" ;;
  }

  dimension: gr_60dslo {
    type: number
    sql: ${TABLE}."gr_60dslo" ;;
  }

  dimension: gr_60dslo_nm {
    type: number
    sql: ${TABLE}."gr_60dslo_nm" ;;
  }

  dimension: gr_90days {
    type: number
    sql: ${TABLE}."gr_90days" ;;
  }

  dimension: gr_90days_nm {
    type: number
    sql: ${TABLE}."gr_90days_nm" ;;
  }

  dimension: gr_90dslo {
    type: number
    sql: ${TABLE}."gr_90dslo" ;;
  }

  dimension: gr_90dslo_nm {
    type: number
    sql: ${TABLE}."gr_90dslo_nm" ;;
  }

  dimension: main_funnel_nm {
    type: string
    sql: ${TABLE}."main_funnel_nm" ;;
  }

  dimension: main_funnel_tm {
    type: string
    sql: ${TABLE}."main_funnel_tm" ;;
  }

  dimension: nr_60days {
    type: number
    sql: ${TABLE}."nr_60days" ;;
  }

  dimension: nr_60days_nm {
    type: number
    sql: ${TABLE}."nr_60days_nm" ;;
  }

  dimension: nr_60dslo {
    type: number
    sql: ${TABLE}."nr_60dslo" ;;
  }

  dimension: nr_60dslo_nm {
    type: number
    sql: ${TABLE}."nr_60dslo_nm" ;;
  }

  dimension: nr_90days {
    type: number
    sql: ${TABLE}."nr_90days" ;;
  }

  dimension: nr_90days_nm {
    type: number
    sql: ${TABLE}."nr_90days_nm" ;;
  }

  dimension: nr_90dslo {
    type: number
    sql: ${TABLE}."nr_90dslo" ;;
  }

  dimension: nr_90dslo_nm {
    type: number
    sql: ${TABLE}."nr_90dslo_nm" ;;
  }

  dimension: orders_60days {
    type: number
    sql: ${TABLE}."orders_60days" ;;
  }

  dimension: orders_60days_nm {
    type: number
    sql: ${TABLE}."orders_60days_nm" ;;
  }

  dimension: orders_60dslo {
    type: number
    sql: ${TABLE}."orders_60dslo" ;;
  }

  dimension: orders_60dslo_nm {
    type: number
    sql: ${TABLE}."orders_60dslo_nm" ;;
  }

  dimension: orders_90days {
    type: number
    sql: ${TABLE}."orders_90days" ;;
  }

  dimension: orders_90days_nm {
    type: number
    sql: ${TABLE}."orders_90days_nm" ;;
  }

  dimension: total_gr {
    type: number
    sql: ${TABLE}."total_gr" ;;
  }

  dimension: total_gr_nm {
    type: number
    sql: ${TABLE}."total_gr_nm" ;;
  }

  dimension: total_orders {
    type: number
    sql: ${TABLE}."total_orders" ;;
  }

  dimension: total_orders_nm {
    type: number
    sql: ${TABLE}."total_orders_nm" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
