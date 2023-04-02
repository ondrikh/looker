view: user_engagement_page_behaviour {
  sql_table_name: "WORKSPACE_233686783"."user_engagement_page_behaviour"
    ;;

  dimension: conversion_rate_to_euro_fin {
    type: number
    sql: ${TABLE}."conversion_rate_to_euro_fin" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: customer_segment_based_on_order {
    type: string
    sql: ${TABLE}."customer_segment_based_on_order" ;;
  }

  dimension: deliver_at {
    type: string
    sql: ${TABLE}."deliver_at" ;;
  }

  dimension: event_datetime {
    type: string
    sql: ${TABLE}."event_datetime" ;;
  }

  dimension: event_duration_minute {
    type: number
    sql: ${TABLE}."event_duration_minute" ;;
  }

  dimension: finished_order {
    type: string
    sql: ${TABLE}."finished_order" ;;
  }

  dimension: flag_platform_android {
    type: string
    sql: ${TABLE}."flag_platform_android" ;;
  }

  dimension: flag_platform_ios {
    type: string
    sql: ${TABLE}."flag_platform_ios" ;;
  }

  dimension: flag_platform_web {
    type: string
    sql: ${TABLE}."flag_platform_web" ;;
  }

  dimension: ga_key_id {
    type: string
    sql: ${TABLE}."ga_key_id" ;;
  }

  dimension: ga_session_unique_id_virtual {
    type: string
    sql: ${TABLE}."ga_session_unique_id_virtual" ;;
  }

  dimension: master_order_sequence {
    type: string
    sql: ${TABLE}."master_order_sequence" ;;
  }

  dimension: master_order_unique_id {
    type: string
    sql: ${TABLE}."master_order_unique_id" ;;
  }

  dimension: order_arpu_level {
    type: string
    sql: ${TABLE}."order_arpu_level" ;;
  }

  dimension: order_by_premium_paid_type {
    type: string
    sql: ${TABLE}."order_by_premium_paid_type" ;;
  }

  dimension: order_by_premium_user {
    type: string
    sql: ${TABLE}."order_by_premium_user" ;;
  }

  dimension: order_main_funnel {
    type: string
    sql: ${TABLE}."order_main_funnel" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension: page_flag_add_to_cart {
    type: number
    sql: ${TABLE}."page_flag_add_to_cart" ;;
  }

  dimension: page_flag_checkout_begin {
    type: number
    sql: ${TABLE}."page_flag_checkout_begin" ;;
  }

  dimension: page_flag_checkout_end {
    type: number
    sql: ${TABLE}."page_flag_checkout_end" ;;
  }

  dimension: page_flag_view_item {
    type: number
    sql: ${TABLE}."page_flag_view_item" ;;
  }

  dimension: page_flag_visit_cart {
    type: number
    sql: ${TABLE}."page_flag_visit_cart" ;;
  }

  dimension: page_sorting {
    type: string
    sql: ${TABLE}."page_sorting" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: product_detail_sorting {
    type: string
    sql: ${TABLE}."product_detail_sorting" ;;
  }

  dimension: rownumber_sku_add_order {
    type: string
    sql: ${TABLE}."rownumber_sku_add_order" ;;
  }

  dimension: rownumber_sku_add_session {
    type: string
    sql: ${TABLE}."rownumber_sku_add_session" ;;
  }

  dimension: session_flag_add_to_cart {
    type: number
    sql: ${TABLE}."session_flag_add_to_cart" ;;
  }

  dimension: session_flag_checkout_begin {
    type: number
    sql: ${TABLE}."session_flag_checkout_begin" ;;
  }

  dimension: session_flag_checkout_end {
    type: number
    sql: ${TABLE}."session_flag_checkout_end" ;;
  }

  dimension: session_flag_view_item {
    type: number
    sql: ${TABLE}."session_flag_view_item" ;;
  }

  dimension: session_flag_visit_cart {
    type: number
    sql: ${TABLE}."session_flag_visit_cart" ;;
  }

  dimension: sub_order {
    type: string
    sql: ${TABLE}."sub_order" ;;
  }

  dimension: traffic_medium {
    type: string
    sql: ${TABLE}."traffic_medium" ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}."traffic_source" ;;
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
