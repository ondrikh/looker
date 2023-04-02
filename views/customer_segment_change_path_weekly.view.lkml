view: customer_segment_change_path_weekly {
  sql_table_name: "WORKSPACE_233686783"."customer_segment_change_path_weekly"
    ;;

  dimension: activity_last_60days_pw {
    type: string
    sql: ${TABLE}."activity_last_60days_pw" ;;
  }

  dimension: activity_last_60days_tw {
    type: string
    sql: ${TABLE}."activity_last_60days_tw" ;;
  }

  dimension: aov_60dslo {
    type: number
    sql: ${TABLE}."aov_60dslo" ;;
  }

  dimension: aov_90dslo {
    type: number
    sql: ${TABLE}."aov_90dslo" ;;
  }

  dimension: arpu_level {
    type: string
    sql: ${TABLE}."arpu_level" ;;
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

  dimension_group: date_pw {
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
    sql: ${TABLE}."date_pw" ;;
  }

  dimension: days_till_churned {
    type: number
    sql: ${TABLE}."days_till_churned" ;;
  }

  dimension: dsfo {
    type: number
    sql: ${TABLE}."dsfo" ;;
  }

  dimension: dslo {
    type: number
    sql: ${TABLE}."dslo" ;;
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

  dimension: frequency {
    type: number
    sql: ${TABLE}."frequency" ;;
  }

  dimension: gr_60days {
    type: number
    sql: ${TABLE}."gr_60days" ;;
  }

  dimension: gr_60dslo {
    type: number
    sql: ${TABLE}."gr_60dslo" ;;
  }

  dimension: gr_90days {
    type: number
    sql: ${TABLE}."gr_90days" ;;
  }

  dimension: gr_90dslo {
    type: number
    sql: ${TABLE}."gr_90dslo" ;;
  }

  dimension: main_funnel_pw {
    type: string
    sql: ${TABLE}."main_funnel_pw" ;;
  }

  dimension: main_funnel_tw {
    type: string
    sql: ${TABLE}."main_funnel_tw" ;;
  }

  dimension: nr_60days {
    type: number
    sql: ${TABLE}."nr_60days" ;;
  }

  dimension: nr_60dslo {
    type: number
    sql: ${TABLE}."nr_60dslo" ;;
  }

  dimension: nr_90days {
    type: number
    sql: ${TABLE}."nr_90days" ;;
  }

  dimension: nr_90dslo {
    type: number
    sql: ${TABLE}."nr_90dslo" ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}."orders" ;;
  }

  dimension: orders_60days {
    type: number
    sql: ${TABLE}."orders_60days" ;;
  }

  dimension: orders_90days {
    type: number
    sql: ${TABLE}."orders_90days" ;;
  }

  dimension: total_gr {
    type: number
    sql: ${TABLE}."total_gr" ;;
  }

  dimension: total_orders {
    type: number
    sql: ${TABLE}."total_orders" ;;
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
