view: supplier_ads_advertisement_details {
  sql_table_name: "WORKSPACE_233686783"."supplier_ads_advertisement_details"
    ;;

  dimension: active_days_count {
    type: number
    sql: ${TABLE}."active_days_count" ;;
  }

  dimension: advertisement_budget {
    type: string
    sql: ${TABLE}."advertisement_budget" ;;
  }

  dimension: advertisement_budget_daily {
    type: string
    sql: ${TABLE}."advertisement_budget_daily" ;;
  }

  dimension: advertisement_state {
    type: string
    sql: ${TABLE}."advertisement_state" ;;
  }

  dimension: budget_daily {
    type: string
    sql: ${TABLE}."budget_daily" ;;
  }

  dimension: budget_total {
    type: string
    sql: ${TABLE}."budget_total" ;;
  }

  dimension: campaign_state {
    type: string
    sql: ${TABLE}."campaign_state" ;;
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

  dimension: cpm_bid {
    type: number
    value_format_name: id
    sql: ${TABLE}."cpm_bid" ;;
  }

  dimension: deleted {
    type: string
    sql: ${TABLE}."deleted" ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}."display_name" ;;
  }

  dimension: end_at {
    type: string
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

  dimension: impression_purchase_unit {
    type: number
    sql: ${TABLE}."impression_purchase_unit" ;;
  }

  dimension: impression_purchase_value {
    type: number
    sql: ${TABLE}."impression_purchase_value" ;;
  }

  dimension: impression_show_count {
    type: number
    sql: ${TABLE}."impression_show_count" ;;
  }

  dimension: list_brand {
    type: string
    sql: ${TABLE}."list_brand" ;;
  }

  dimension: list_product_id {
    type: string
    sql: ${TABLE}."list_product_id" ;;
  }

  dimension: list_warehouse_id {
    type: string
    sql: ${TABLE}."list_warehouse_id" ;;
  }

  dimension: media_format {
    type: string
    sql: ${TABLE}."media_format" ;;
  }

  dimension: media_format_id {
    type: string
    sql: ${TABLE}."media_format_id" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: search_keyword {
    type: string
    sql: ${TABLE}."search_keyword" ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}."spend" ;;
  }

  dimension: start_at {
    type: string
    sql: ${TABLE}."start_at" ;;
  }

  dimension: strategy_id {
    type: string
    sql: ${TABLE}."strategy_id" ;;
  }

  dimension: target_url {
    type: string
    sql: ${TABLE}."target_url" ;;
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

  measure: count {
    type: count
    drill_fields: [display_name, name]
  }
}
