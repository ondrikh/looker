view: supply_kpi {
  sql_table_name: "WORKSPACE_233686783"."supply_kpi"
    ;;

  dimension: abc_split {
    type: string
    sql: ${TABLE}."abc_split" ;;
  }

  dimension: available_amount {
    type: number
    sql: ${TABLE}."available_amount" ;;
  }

  dimension: available_and_enabled_hours {
    type: number
    sql: ${TABLE}."available_and_enabled_hours" ;;
  }

  dimension: available_value_excl_vat {
    type: number
    sql: ${TABLE}."available_value_excl_vat" ;;
  }

  dimension: available_value_excl_vat_eur {
    type: number
    sql: ${TABLE}."available_value_excl_vat_eur" ;;
  }

  dimension: available_value_excl_vat_fresh {
    type: number
    sql: ${TABLE}."available_value_excl_vat_fresh" ;;
  }

  dimension: category_tag_dry_fresh {
    type: string
    sql: ${TABLE}."category_tag_dry_fresh" ;;
  }

  dimension_group: closed {
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
    sql: ${TABLE}."closed_at" ;;
  }

  dimension: contract_purchasing_price_unit {
    type: string
    sql: ${TABLE}."contract_purchasing_price_unit" ;;
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

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension: dab_added_buffer {
    type: number
    sql: ${TABLE}."dab_added_buffer" ;;
  }

  dimension: dab_day_count {
    type: number
    sql: ${TABLE}."dab_day_count" ;;
  }

  dimension: dab_has_buffer_effect {
    type: string
    sql: ${TABLE}."dab_HasBufferEffect" ;;
  }

  dimension: dab_order_count {
    type: number
    sql: ${TABLE}."dab_order_count" ;;
  }

  dimension: dab_order_count_pieces {
    type: number
    sql: ${TABLE}."dab_order_count_pieces" ;;
  }

  dimension: dab_order_kilogram_count {
    type: number
    sql: ${TABLE}."dab_order_kilogram_count" ;;
  }

  dimension: dab_predicted_count {
    type: number
    sql: ${TABLE}."dab_predicted_count" ;;
  }

  dimension: dab_temp_mode {
    type: string
    sql: ${TABLE}."dab_temp_mode" ;;
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

  dimension: day_count_calc {
    type: number
    sql: ${TABLE}."day_count_calc" ;;
  }

  dimension: day_count_system {
    type: number
    sql: ${TABLE}."day_count_system" ;;
  }

  dimension: days_coverage_opp {
    type: number
    sql: ${TABLE}."days_coverage_opp" ;;
  }

  dimension_group: deliver {
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
    sql: ${TABLE}."deliver_at" ;;
  }

  dimension: enabled_hours {
    type: number
    sql: ${TABLE}."enabled_hours" ;;
  }

  dimension_group: finished {
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
    sql: ${TABLE}."finished_at" ;;
  }

  dimension_group: first_replenishment {
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
    sql: ${TABLE}."first_replenishment_at" ;;
  }

  dimension: generated_wanted_count {
    type: number
    sql: ${TABLE}."generated_wanted_count" ;;
  }

  dimension: has_order_count_generated {
    type: string
    sql: ${TABLE}."has_order_count_generated" ;;
  }

  dimension: is_autosend {
    type: string
    sql: ${TABLE}."is_autosend" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}."L2_category_name" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."L3_category_name" ;;
  }

  dimension: moq_price {
    type: string
    sql: ${TABLE}."moq_price" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: net_cogs {
    type: number
    sql: ${TABLE}."net_COGS" ;;
  }

  dimension: net_cogs_fresh {
    type: number
    sql: ${TABLE}."net_COGS_fresh" ;;
  }

  dimension: om_pack_amount {
    type: string
    sql: ${TABLE}."om_pack_amount" ;;
  }

  dimension: om_pack_type {
    type: string
    sql: ${TABLE}."om_pack_type" ;;
  }

  dimension: om_round_percentage {
    type: string
    sql: ${TABLE}."om_round_percentage" ;;
  }

  dimension: order_count_pieces {
    type: number
    sql: ${TABLE}."order_count_pieces" ;;
  }

  dimension: order_item_deviation {
    type: number
    sql: ${TABLE}."order_item_deviation" ;;
  }

  dimension: order_kilogram_count {
    type: number
    sql: ${TABLE}."order_kilogram_count" ;;
  }

  dimension: order_unit {
    type: string
    sql: ${TABLE}."order_unit" ;;
  }

  dimension: orders_ids {
    type: string
    sql: ${TABLE}."orders_ids" ;;
  }

  dimension: primary_supplier_id {
    type: string
    sql: ${TABLE}."primary_supplier_id" ;;
  }

  dimension: primary_supplier_name {
    type: string
    sql: ${TABLE}."primary_supplier_name" ;;
  }

  dimension: private_brand_sku {
    type: string
    sql: ${TABLE}."private_brand_sku" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: replenished_amount {
    type: number
    sql: ${TABLE}."replenished_amount" ;;
  }

  dimension: replenishment_requests {
    type: number
    sql: ${TABLE}."replenishment_requests" ;;
  }

  dimension: replenishment_requests_prio_1 {
    type: number
    sql: ${TABLE}."replenishment_requests_prio_1" ;;
  }

  dimension: replenishment_requests_prio_2 {
    type: number
    sql: ${TABLE}."replenishment_requests_prio_2" ;;
  }

  dimension: replenishment_requests_prio_3 {
    type: number
    sql: ${TABLE}."replenishment_requests_prio_3" ;;
  }

  dimension: replenishment_requests_prio_4 {
    type: number
    sql: ${TABLE}."replenishment_requests_prio_4" ;;
  }

  dimension: replenishment_requests_prio_5 {
    type: number
    sql: ${TABLE}."replenishment_requests_prio_5" ;;
  }

  dimension: replenishment_requests_prio_unassigned {
    type: number
    sql: ${TABLE}."replenishment_requests_prio_unassigned" ;;
  }

  dimension: responsible_disponent {
    type: string
    sql: ${TABLE}."responsible_disponent" ;;
  }

  dimension: sales_amount {
    type: number
    sql: ${TABLE}."sales_amount" ;;
  }

  dimension: sales_amount_non_promo {
    type: number
    sql: ${TABLE}."sales_amount_non_promo" ;;
  }

  dimension: sales_amount_promo {
    type: number
    sql: ${TABLE}."sales_amount_promo" ;;
  }

  dimension: seasonal_adjustment {
    type: string
    sql: ${TABLE}."seasonal_adjustment" ;;
  }

  dimension: shrink_sum_net_value {
    type: number
    sql: ${TABLE}."shrink_sum_net_value" ;;
  }

  dimension: shrink_sum_net_value_eur {
    type: number
    sql: ${TABLE}."shrink_sum_net_value_EUR" ;;
  }

  dimension: sku_count_in_day {
    type: number
    sql: ${TABLE}."sku_count_in_day" ;;
  }

  dimension: sold_quantity_pcs_kg {
    type: number
    sql: ${TABLE}."Sold_Quantity_pcs_kg" ;;
  }

  dimension: supplier_id {
    type: string
    sql: ${TABLE}."supplier_id" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: transactions_sum_nr {
    type: number
    sql: ${TABLE}."transactions_sum_NR" ;;
  }

  dimension: transactions_sum_nr_eur {
    type: number
    sql: ${TABLE}."transactions_sum_NR_EUR" ;;
  }

  dimension: wanted_count {
    type: number
    sql: ${TABLE}."wanted_count" ;;
  }

  dimension: wanted_count_original {
    type: number
    sql: ${TABLE}."wanted_count_original" ;;
  }

  dimension: wanted_count_supl_rel {
    type: number
    sql: ${TABLE}."wanted_count_supl_rel" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  dimension: warehouse_replenishment_amount {
    type: number
    sql: ${TABLE}."warehouse_replenishment_amount" ;;
  }

  dimension: wi_unique_id {
    type: string
    sql: ${TABLE}."wi_unique_id" ;;
  }

  dimension: wi_unit {
    type: string
    sql: ${TABLE}."wi_unit" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      l2_category_name,
      supplier_name,
      l3_category_name,
      l1_category_name,
      primary_supplier_name,
      name,
      warehouse_name
    ]
  }
}
