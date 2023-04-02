view: competitors_pairings_snapshot {
  sql_table_name: "WORKSPACE_233686783"."competitors_pairings_snapshot"
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: brand_id {
    type: string
    sql: ${TABLE}."brand_id" ;;
  }

  dimension: combined_normal_price {
    type: number
    sql: ${TABLE}."combined_normal_price" ;;
  }

  dimension: competitor {
    type: string
    sql: ${TABLE}."competitor" ;;
  }

  dimension: competitor_combined_normal_price {
    type: number
    sql: ${TABLE}."competitor_combined_normal_price" ;;
  }

  dimension: competitor_external_unique_id {
    type: string
    sql: ${TABLE}."competitor_external_unique_id" ;;
  }

  dimension: competitor_normal_price {
    type: number
    sql: ${TABLE}."competitor_normal_price" ;;
  }

  dimension: competitor_normal_unit_price {
    type: number
    sql: ${TABLE}."competitor_normal_unit_price" ;;
  }

  dimension: competitor_product_name {
    type: string
    sql: ${TABLE}."competitor_product_name" ;;
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

  dimension: deleted {
    type: string
    sql: ${TABLE}."deleted" ;;
  }

  dimension: family_pairing {
    type: string
    sql: ${TABLE}."family_pairing" ;;
  }

  dimension: filt {
    type: string
    sql: ${TABLE}."filt" ;;
  }

  dimension: how_paired {
    type: string
    sql: ${TABLE}."how_paired" ;;
  }

  dimension: how_paired_family_included {
    type: string
    sql: ${TABLE}."how_paired_family_included" ;;
  }

  dimension: is_top_20_most_penetrated {
    type: string
    sql: ${TABLE}."is_top_20_most_penetrated" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: l1_category_name_en {
    type: string
    sql: ${TABLE}."L1_category_name_en" ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}."L2_category_name" ;;
  }

  dimension: l2_category_name_en {
    type: string
    sql: ${TABLE}."L2_category_name_en" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."L3_category_name" ;;
  }

  dimension: l3_category_name_en {
    type: string
    sql: ${TABLE}."L3_category_name_en" ;;
  }

  dimension: net_cogs_last_30 {
    type: number
    sql: ${TABLE}."Net_COGS_last_30" ;;
  }

  dimension: net_cogs_last_30_euros {
    type: number
    sql: ${TABLE}."Net_COGS_last_30_Euros" ;;
  }

  dimension: nr_last_30 {
    type: number
    sql: ${TABLE}."NR_last_30" ;;
  }

  dimension: nr_last_30_euros {
    type: number
    sql: ${TABLE}."NR_last_30_Euros" ;;
  }

  dimension: number_of_competitors {
    type: string
    sql: ${TABLE}."number_of_competitors" ;;
  }

  dimension: number_of_competitors_family_included {
    type: string
    sql: ${TABLE}."number_of_competitors_family_included" ;;
  }

  dimension: packages_last_30 {
    type: number
    sql: ${TABLE}."Packages_last_30" ;;
  }

  dimension: pi_above_110 {
    type: number
    sql: ${TABLE}."PI_above_110" ;;
  }

  dimension: price_index_110 {
    type: number
    sql: ${TABLE}."price_index_110" ;;
  }

  dimension: price_multiplier {
    type: number
    sql: ${TABLE}."price_multiplier" ;;
  }

  dimension: price_ratio {
    type: number
    sql: ${TABLE}."price_ratio" ;;
  }

  dimension: prime_product_unique_id {
    type: string
    sql: ${TABLE}."prime_product_unique_id" ;;
  }

  dimension: product_family_unique_id {
    type: string
    sql: ${TABLE}."product_family_unique_id" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
  }

  dimension: product_orders_last_30 {
    type: number
    sql: ${TABLE}."product_orders_last_30" ;;
  }

  dimension: product_penetration_last_30 {
    type: number
    sql: ${TABLE}."product_penetration_last_30" ;;
  }

  dimension: product_penetration_percent_rank_last_30 {
    type: number
    sql: ${TABLE}."product_penetration_percent_rank_last_30" ;;
  }

  dimension: product_total_orders_last_30 {
    type: number
    sql: ${TABLE}."product_total_orders_last_30" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: rohlik_action_price {
    type: number
    sql: ${TABLE}."rohlik_action_price" ;;
  }

  dimension: rohlik_action_semicaliber_price {
    type: number
    sql: ${TABLE}."rohlik_action_semicaliber_price" ;;
  }

  dimension: rohlik_actual_price {
    type: number
    sql: ${TABLE}."rohlik_actual_price" ;;
  }

  dimension: rohlik_normal_price {
    type: number
    sql: ${TABLE}."rohlik_normal_price" ;;
  }

  dimension: rohlik_product_action_reason {
    type: string
    sql: ${TABLE}."rohlik_product_action_reason" ;;
  }

  dimension: rohlik_semicaliber_price {
    type: number
    sql: ${TABLE}."rohlik_semicaliber_price" ;;
  }

  dimension: row_price_index {
    type: number
    sql: ${TABLE}."row_price_index" ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}."snapshot_date" ;;
  }

  dimension: total_nr {
    type: number
    sql: ${TABLE}."total_nr" ;;
  }

  dimension: transactions_sum_net_cogs_with_bonus_last_30 {
    type: number
    sql: ${TABLE}."transactions_sum_net_COGS_with_bonus_last_30" ;;
  }

  dimension: unit_type {
    type: string
    sql: ${TABLE}."unit_type" ;;
  }

  dimension: weight_nr {
    type: number
    sql: ${TABLE}."weight_nr" ;;
  }

  measure: count {
    type: count
    drill_fields: [l3_category_name, product_name, l1_category_name, l2_category_name, competitor_product_name]
  }
}
