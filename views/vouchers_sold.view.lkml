view: vouchers_sold {
  sql_table_name: "WORKSPACE_233686783"."vouchers_sold"
    ;;

  dimension: adyen_id {
    type: string
    sql: ${TABLE}."adyen_id" ;;
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

  dimension: invoice_number {
    type: string
    sql: ${TABLE}."invoice_number" ;;
  }

  dimension: order {
    type: string
    sql: ${TABLE}."order" ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}."origin" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."quantity" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."title" ;;
  }

  dimension: total_price_excluding_vat {
    type: number
    sql: ${TABLE}."total_price_excluding_vat" ;;
  }

  dimension: total_price_including_vat {
    type: number
    sql: ${TABLE}."total_price_including_vat" ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}."unit_price" ;;
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

  dimension: voucher_activated_count {
    type: number
    sql: ${TABLE}."voucher_activated_count" ;;
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
