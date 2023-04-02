view: aggregated_transaction_extended {
  sql_table_name: "WORKSPACE_233686783"."aggregated_transaction_extended"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: action_price {
    type: number
    sql: ${TABLE}."action_price" ;;
  }

  dimension: actual_price {
    type: number
    sql: ${TABLE}."actual_price" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."amount" ;;
  }

  dimension: availability {
    type: number
    sql: ${TABLE}."availability" ;;
  }

  dimension: bonus {
    type: number
    sql: ${TABLE}."bonus" ;;
  }

  dimension: bonus_credit_note {
    type: number
    sql: ${TABLE}."bonus_credit_note" ;;
  }

  dimension: bonus_credit_note_eur {
    type: number
    sql: ${TABLE}."bonus_credit_note_eur" ;;
  }

  dimension: bonus_eur {
    type: number
    sql: ${TABLE}."bonus_eur" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: conversion_rate_to_euro {
    type: number
    sql: ${TABLE}."conversion_rate_to_euro" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: country_of_origin {
    type: string
    sql: ${TABLE}."country_of_origin" ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."date" ;;
  }

  dimension: deleted {
    type: number
    sql: ${TABLE}."deleted" ;;
  }

  dimension: delisted {
    type: number
    sql: ${TABLE}."delisted" ;;
  }

  dimension: delisting_candidate {
    type: string
    sql: ${TABLE}."delisting_candidate" ;;
  }

  dimension: enabled {
    type: number
    sql: ${TABLE}."enabled" ;;
  }

  dimension: expiration_net_cogs {
    type: number
    sql: ${TABLE}."expiration_net_cogs" ;;
  }

  dimension: expiration_net_cogs_eur {
    type: number
    sql: ${TABLE}."expiration_net_cogs_eur" ;;
  }

  dimension: expiration_net_revenue {
    type: number
    sql: ${TABLE}."expiration_net_revenue" ;;
  }

  dimension: expiration_net_revenue_eur {
    type: number
    sql: ${TABLE}."expiration_net_revenue_eur" ;;
  }

  dimension: gross_cogs {
    type: number
    sql: ${TABLE}."gross_cogs" ;;
  }

  dimension: gross_cogs_eur {
    type: number
    sql: ${TABLE}."gross_cogs_eur" ;;
  }

  dimension: gross_revenue {
    type: number
    sql: ${TABLE}."gross_revenue" ;;
  }

  dimension: gross_revenue_eur {
    type: number
    sql: ${TABLE}."gross_revenue_eur" ;;
  }

  dimension: id_inventory {
    type: string
    sql: ${TABLE}."id_inventory" ;;
  }

  dimension: is_bio {
    type: number
    sql: ${TABLE}."is_bio" ;;
  }

  dimension: item_ean {
    type: string
    sql: ${TABLE}."item_ean" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: l1_category_name_en {
    type: string
    sql: ${TABLE}."L1_category_name_en" ;;
  }

  dimension: l1_secondary_category_name {
    type: string
    sql: ${TABLE}."L1_secondary_category_name" ;;
  }

  dimension: l1_secondary_category_name_en {
    type: string
    sql: ${TABLE}."L1_secondary_category_name_en" ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}."L2_category_name" ;;
  }

  dimension: l2_category_name_en {
    type: string
    sql: ${TABLE}."L2_category_name_en" ;;
  }

  dimension: l2_secondary_category_name {
    type: string
    sql: ${TABLE}."L2_secondary_category_name" ;;
  }

  dimension: l2_secondary_category_name_en {
    type: string
    sql: ${TABLE}."L2_secondary_category_name_en" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."L3_category_name" ;;
  }

  dimension: l3_category_name_en {
    type: string
    sql: ${TABLE}."L3_category_name_en" ;;
  }

  dimension: l3_secondary_category_name {
    type: string
    sql: ${TABLE}."L3_secondary_category_name" ;;
  }

  dimension: l3_secondary_category_name_en {
    type: string
    sql: ${TABLE}."L3_secondary_category_name_en" ;;
  }

  dimension: l4_category_name {
    type: string
    sql: ${TABLE}."L4_category_name" ;;
  }

  dimension: l5_category_name {
    type: string
    sql: ${TABLE}."L5_category_name" ;;
  }

  dimension: last_minute_packages {
    type: number
    sql: ${TABLE}."last_minute_packages" ;;
  }

  dimension: level {
    type: string
    sql: ${TABLE}."level" ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}."manufacturer" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: net_cogs {
    type: number
    sql: ${TABLE}."net_cogs" ;;
  }

  dimension: net_cogs_eur {
    type: number
    sql: ${TABLE}."net_cogs_eur" ;;
  }

  dimension: net_cogs_with_bonus {
    type: number
    sql: ${TABLE}."net_cogs_with_bonus" ;;
  }

  dimension: net_cogs_with_bonus_credit_note {
    type: number
    sql: ${TABLE}."net_cogs_with_bonus_credit_note" ;;
  }

  dimension: net_cogs_with_bonus_credit_note_eur {
    type: number
    sql: ${TABLE}."net_cogs_with_bonus_credit_note_eur" ;;
  }

  dimension: net_cogs_with_bonus_eur {
    type: number
    sql: ${TABLE}."net_cogs_with_bonus_eur" ;;
  }

  dimension: net_revenue {
    type: number
    sql: ${TABLE}."net_revenue" ;;
  }

  dimension: net_revenue_eur {
    type: number
    sql: ${TABLE}."net_revenue_eur" ;;
  }

  dimension: new_item {
    type: number
    sql: ${TABLE}."new_item" ;;
  }

  dimension: packages {
    type: number
    sql: ${TABLE}."packages" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."price" ;;
  }

  dimension: primary_supplier_menu_code {
    type: string
    sql: ${TABLE}."primary_supplier_menu_code" ;;
  }

  dimension: primary_supplier_name {
    type: string
    sql: ${TABLE}."primary_supplier_name" ;;
  }

  dimension: promo_net_cogs {
    type: number
    sql: ${TABLE}."promo_net_cogs" ;;
  }

  dimension: promo_net_cogs_eur {
    type: number
    sql: ${TABLE}."promo_net_cogs_eur" ;;
  }

  dimension: promo_net_revenue {
    type: number
    sql: ${TABLE}."promo_net_revenue" ;;
  }

  dimension: promo_net_revenue_eur {
    type: number
    sql: ${TABLE}."promo_net_revenue_eur" ;;
  }

  dimension: promotions {
    type: string
    sql: ${TABLE}."promotions" ;;
  }

  dimension: purchase_price_action {
    type: number
    sql: ${TABLE}."purchase_price_action" ;;
  }

  dimension: purchase_price_normal {
    type: number
    sql: ${TABLE}."purchase_price_normal" ;;
  }

  dimension: received_items {
    type: number
    sql: ${TABLE}."received_items" ;;
  }

  dimension: received_items_sum_net_value {
    type: number
    sql: ${TABLE}."received_items_sum_net_value" ;;
  }

  dimension: received_items_sum_net_value_eur {
    type: number
    sql: ${TABLE}."received_items_sum_net_value_eur" ;;
  }

  dimension: responsible_user {
    type: string
    sql: ${TABLE}."responsible_user" ;;
  }

  dimension: sale_packages {
    type: number
    sql: ${TABLE}."sale_packages" ;;
  }

  dimension: shrink_items_com {
    type: number
    sql: ${TABLE}."shrink_items_com" ;;
  }

  dimension: shrink_reason {
    type: string
    sql: ${TABLE}."shrink_reason" ;;
  }

  dimension: shrink_sum_net_value {
    type: number
    sql: ${TABLE}."shrink_sum_net_value" ;;
  }

  dimension: shrink_sum_net_value_com {
    type: number
    sql: ${TABLE}."shrink_sum_net_value_com" ;;
  }

  dimension: shrink_sum_net_value_com_eur {
    type: number
    sql: ${TABLE}."shrink_sum_net_value_com_eur" ;;
  }

  dimension: shrink_sum_net_value_eur {
    type: number
    sql: ${TABLE}."shrink_sum_net_value_eur" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}."transaction_type" ;;
  }

  dimension: transactions_sum_net_cogs {
    type: number
    sql: ${TABLE}."transactions_sum_net_COGS" ;;
  }

  dimension: transactions_sum_net_cogs_eur {
    type: number
    sql: ${TABLE}."transactions_sum_net_COGS_eur" ;;
  }

  dimension: transactions_sum_nr {
    type: number
    sql: ${TABLE}."transactions_sum_NR" ;;
  }

  dimension: transactions_sum_nr_eur {
    type: number
    sql: ${TABLE}."transactions_sum_NR_eur" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  dimension: web_url {
    type: string
    sql: ${TABLE}."web_url" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      l4_category_name,
      l1_category_name,
      supplier_name,
      warehouse_name,
      l5_category_name,
      l2_secondary_category_name,
      l3_category_name,
      l3_secondary_category_name,
      primary_supplier_name,
      l2_category_name,
      name,
      l1_secondary_category_name
    ]
  }
}
