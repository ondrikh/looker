view: vouchers_activated {
  sql_table_name: "WORKSPACE_233686783"."vouchers_activated"
    ;;

  dimension: code {
    type: string
    sql: ${TABLE}."code" ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: ftu {
    type: string
    sql: ${TABLE}."ftu" ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}."origin" ;;
  }

  dimension: paid_by_user {
    type: string
    sql: ${TABLE}."paid_by_user" ;;
  }

  dimension: price_excluding_vat {
    type: number
    sql: ${TABLE}."price_excluding_vat" ;;
  }

  dimension: price_including_vat {
    type: number
    sql: ${TABLE}."price_including_vat" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."title" ;;
  }

  dimension: use_until {
    type: string
    sql: ${TABLE}."use_until" ;;
  }

  dimension_group: used {
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
    sql: ${TABLE}."used_at" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: vat {
    type: number
    sql: ${TABLE}."vat" ;;
  }

  dimension: vat_level {
    type: number
    sql: ${TABLE}."vat_level" ;;
  }

  dimension: voucher_id {
    type: string
    sql: ${TABLE}."voucher_id" ;;
  }

  dimension: voucher_type {
    type: string
    sql: ${TABLE}."voucher_type" ;;
  }

  dimension: voucher_unique_id {
    type: string
    sql: ${TABLE}."voucher_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [user.id]
  }
}
