view: staging63bd61253e745 {
  sql_table_name: "WORKSPACE_233686783"."staging63bd61253e745"
    ;;

  dimension: aov {
    type: number
    sql: ${TABLE}."aov" ;;
  }

  dimension: arpu_level {
    type: string
    sql: ${TABLE}."arpu_level" ;;
  }

  dimension: churn_v2 {
    type: string
    sql: ${TABLE}."churn_v2" ;;
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

  dimension: frequency {
    type: number
    sql: ${TABLE}."frequency" ;;
  }

  dimension: gr {
    type: number
    sql: ${TABLE}."gr" ;;
  }

  dimension: gr_60days {
    type: number
    sql: ${TABLE}."gr_60days" ;;
  }

  dimension: key_id {
    type: string
    sql: ${TABLE}."key_id" ;;
  }

  dimension: main_funnel {
    type: string
    sql: ${TABLE}."main_funnel" ;;
  }

  dimension: nr_60days {
    type: number
    sql: ${TABLE}."nr_60days" ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}."orders" ;;
  }

  dimension: orders_60days {
    type: number
    sql: ${TABLE}."orders_60days" ;;
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
