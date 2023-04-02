view: supplier_ads_impression_brand_metrics {
  sql_table_name: "WORKSPACE_233686783"."supplier_ads_impression_brand_metrics"
    ;;

  dimension: alcohol {
    type: number
    sql: ${TABLE}."alcohol" ;;
  }

  dimension: animal_cat {
    type: number
    sql: ${TABLE}."animal_cat" ;;
  }

  dimension: animal_dog {
    type: number
    sql: ${TABLE}."animal_dog" ;;
  }

  dimension: animal_other {
    type: number
    sql: ${TABLE}."animal_other" ;;
  }

  dimension: baby {
    type: number
    sql: ${TABLE}."baby" ;;
  }

  dimension: bio {
    type: number
    sql: ${TABLE}."bio" ;;
  }

  dimension: budget_type {
    type: string
    sql: ${TABLE}."budget_type" ;;
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

  dimension_group: date_day {
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
    sql: ${TABLE}."date_day" ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}."display_name" ;;
  }

  dimension: end_at {
    type: string
    sql: ${TABLE}."end_at" ;;
  }

  dimension: farmer_product {
    type: number
    sql: ${TABLE}."farmer_product" ;;
  }

  dimension: gluten_free {
    type: number
    sql: ${TABLE}."gluten_free" ;;
  }

  dimension: has_paid_premium {
    type: string
    sql: ${TABLE}."has_paid_premium" ;;
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

  dimension: lactose_free {
    type: number
    sql: ${TABLE}."lactose_free" ;;
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

  dimension: parents_club {
    type: string
    sql: ${TABLE}."parents_club" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}."postal_code" ;;
  }

  dimension: purchase_unit_count {
    type: number
    sql: ${TABLE}."purchase_unit_count" ;;
  }

  dimension: purchase_value {
    type: number
    sql: ${TABLE}."purchase_value" ;;
  }

  dimension: senior {
    type: string
    sql: ${TABLE}."senior" ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}."spend" ;;
  }

  dimension: start_at {
    type: string
    sql: ${TABLE}."start_at" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
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

  dimension: unique_user_identified {
    type: string
    sql: ${TABLE}."unique_user_identified" ;;
  }

  dimension: unique_warehouse_id {
    type: string
    sql: ${TABLE}."unique_warehouse_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [name, display_name]
  }
}
