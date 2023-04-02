view: search_final {
  sql_table_name: "WORKSPACE_233686783"."search_final"
    ;;

  dimension: ab_test {
    type: string
    sql: ${TABLE}."ab_test" ;;
  }

  dimension: add_to_cart {
    type: number
    sql: ${TABLE}."add_to_cart" ;;
  }

  dimension: add_to_cart_count {
    type: number
    sql: ${TABLE}."add_to_cart_count" ;;
  }

  dimension: conversion {
    type: string
    sql: ${TABLE}."conversion" ;;
  }

  dimension: count_add_cart {
    type: string
    sql: ${TABLE}."count_add_cart" ;;
  }

  dimension: count_search_term {
    type: string
    sql: ${TABLE}."count_search_term" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
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

  dimension: empty_results_count {
    type: number
    sql: ${TABLE}."empty_results_count" ;;
  }

  dimension: is_authenticated {
    type: number
    sql: ${TABLE}."is_authenticated" ;;
  }

  dimension: method {
    type: string
    sql: ${TABLE}."method" ;;
  }

  dimension: mkt_flag {
    type: string
    sql: ${TABLE}."mkt_flag" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: search_id {
    type: string
    sql: ${TABLE}."search_id" ;;
  }

  dimension: search_length {
    type: number
    sql: ${TABLE}."search_length" ;;
  }

  dimension: search_term {
    type: string
    sql: ${TABLE}."search_term" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."source" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
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
