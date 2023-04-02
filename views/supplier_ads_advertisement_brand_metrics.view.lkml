view: supplier_ads_advertisement_brand_metrics {
  sql_table_name: "WORKSPACE_233686783"."supplier_ads_advertisement_brand_metrics"
    ;;

  dimension: budget_type {
    type: string
    sql: ${TABLE}."budget_type" ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}."campaign_name" ;;
  }

  dimension: conversion_rate_to_euro_fin {
    type: string
    sql: ${TABLE}."conversion_rate_to_euro_fin" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}."end_at" ;;
  }

  dimension: impression_add_to_cart_count {
    type: number
    sql: ${TABLE}."impression_add_to_cart_count" ;;
  }

  dimension: impression_click_count {
    type: number
    sql: ${TABLE}."impression_click_count" ;;
  }

  dimension: impression_count {
    type: number
    sql: ${TABLE}."impression_count" ;;
  }

  dimension: impression_purchase_count {
    type: number
    sql: ${TABLE}."impression_purchase_count" ;;
  }

  dimension: impression_show_count {
    type: number
    sql: ${TABLE}."impression_show_count" ;;
  }

  dimension: impression_show_daily {
    type: number
    sql: ${TABLE}."impression_show_daily" ;;
  }

  dimension: impression_show_perc {
    type: number
    sql: ${TABLE}."impression_show_perc" ;;
  }

  dimension: media_format {
    type: string
    sql: ${TABLE}."media_format" ;;
  }

  dimension: media_format_id {
    type: string
    sql: ${TABLE}."media_format_id" ;;
  }

  dimension: purchase_unit_count {
    type: number
    sql: ${TABLE}."purchase_unit_count" ;;
  }

  dimension: purchase_value {
    type: number
    sql: ${TABLE}."purchase_value" ;;
  }

  dimension: purchase_value_eur {
    type: number
    sql: ${TABLE}."purchase_value_eur" ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}."spend" ;;
  }

  dimension: spend_eur {
    type: number
    sql: ${TABLE}."spend_eur" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."start_at" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: unique_advertisement_id {
    type: string
    sql: ${TABLE}."unique_advertisement_id" ;;
  }

  dimension: unique_campaign_id {
    type: string
    sql: ${TABLE}."unique_campaign_id" ;;
  }

  dimension: unique_supplier_id {
    type: string
    sql: ${TABLE}."unique_supplier_id" ;;
  }

  dimension: unique_user_count {
    type: number
    sql: ${TABLE}."unique_user_count" ;;
  }

  measure: count {
    type: count
    drill_fields: [supplier_name, campaign_name]
  }
}
