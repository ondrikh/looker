view: bottles_in_crates_transactions {
  sql_table_name: "WORKSPACE_233686783"."bottles_in_crates_transactions"
    ;;

  dimension: actions_type {
    type: string
    sql: ${TABLE}."actions_type" ;;
  }

  dimension: binding_crate_count {
    type: number
    sql: ${TABLE}."binding_crate_count" ;;
  }

  dimension: binding_type {
    type: string
    sql: ${TABLE}."binding_type" ;;
  }

  dimension: binding_unique_id {
    type: string
    sql: ${TABLE}."binding_unique_id" ;;
  }

  dimension: bottle_avg_unit_buy_price_excl_vat {
    type: number
    sql: ${TABLE}."bottle_avg_unit_buy_price_excl_vat" ;;
  }

  dimension: bottle_avg_unit_buy_price_incl_vat {
    type: number
    sql: ${TABLE}."bottle_avg_unit_buy_price_incl_vat" ;;
  }

  dimension: bottle_order_field_unique_id {
    type: string
    sql: ${TABLE}."bottle_order_field_unique_id" ;;
  }

  dimension: bottle_product_unique_id {
    type: string
    sql: ${TABLE}."bottle_product_unique_id" ;;
  }

  dimension: bottle_source {
    type: string
    sql: ${TABLE}."bottle_source" ;;
  }

  dimension: bottle_source_category_id {
    type: string
    sql: ${TABLE}."bottle_source_category_id" ;;
  }

  dimension: bottle_supplier_name {
    type: string
    sql: ${TABLE}."bottle_supplier_name" ;;
  }

  dimension: bottle_supplier_unique_id {
    type: string
    sql: ${TABLE}."bottle_supplier_unique_id" ;;
  }

  dimension: bottle_type {
    type: string
    sql: ${TABLE}."bottle_type" ;;
  }

  dimension: bottle_unit {
    type: string
    sql: ${TABLE}."bottle_unit" ;;
  }

  dimension: bottle_unit_sell_price_excl_vat {
    type: number
    sql: ${TABLE}."bottle_unit_sell_price_excl_vat" ;;
  }

  dimension: bottle_unit_sell_price_incl_vat {
    type: number
    sql: ${TABLE}."bottle_unit_sell_price_incl_vat" ;;
  }

  dimension: bottle_unit_unified {
    type: string
    sql: ${TABLE}."bottle_unit_unified" ;;
  }

  dimension: bottle_warehouse_inventory_id {
    type: string
    sql: ${TABLE}."bottle_warehouse_inventory_id" ;;
  }

  dimension: bottle_warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."bottle_warehouse_inventory_unique_id" ;;
  }

  dimension: bottles_in_crates {
    type: number
    sql: ${TABLE}."bottles_in_crates" ;;
  }

  dimension: bottles_outside_crates {
    type: number
    sql: ${TABLE}."bottles_outside_crates" ;;
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

  dimension: crate_l1_category_name {
    type: string
    sql: ${TABLE}."crate_L1_category_name" ;;
  }

  dimension: crate_l1_category_name_en {
    type: string
    sql: ${TABLE}."crate_L1_category_name_en" ;;
  }

  dimension: crate_order_field_unique_id {
    type: string
    sql: ${TABLE}."crate_order_field_unique_id" ;;
  }

  dimension: crate_product_unique_id {
    type: string
    sql: ${TABLE}."crate_product_unique_id" ;;
  }

  dimension: crate_size {
    type: number
    sql: ${TABLE}."crate_size" ;;
  }

  dimension: crate_type {
    type: string
    sql: ${TABLE}."crate_type" ;;
  }

  dimension: crate_warehouse_inventory_id {
    type: string
    sql: ${TABLE}."crate_warehouse_inventory_id" ;;
  }

  dimension: crate_warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."crate_warehouse_inventory_unique_id" ;;
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

  dimension_group: deliver {
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
    sql: ${TABLE}."deliver_at" ;;
  }

  dimension: is_revenue {
    type: string
    sql: ${TABLE}."is_revenue" ;;
  }

  dimension: l1_category_id {
    type: string
    sql: ${TABLE}."L1_category_id" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: l1_category_name_en {
    type: string
    sql: ${TABLE}."L1_category_name_en" ;;
  }

  dimension: l1_category_name_en_unified {
    type: string
    sql: ${TABLE}."L1_category_name_en_unified" ;;
  }

  dimension: l2_category_id {
    type: string
    sql: ${TABLE}."L2_category_id" ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}."L2_category_name" ;;
  }

  dimension: l2_category_name_en {
    type: string
    sql: ${TABLE}."L2_category_name_en" ;;
  }

  dimension: l2_category_name_en_unified {
    type: string
    sql: ${TABLE}."L2_category_name_en_unified" ;;
  }

  dimension: l3_category_id {
    type: string
    sql: ${TABLE}."L3_category_id" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."L3_category_name" ;;
  }

  dimension: l3_category_name_en {
    type: string
    sql: ${TABLE}."L3_category_name_en" ;;
  }

  dimension: l4_category_id {
    type: string
    sql: ${TABLE}."L4_category_id" ;;
  }

  dimension: l4_category_name {
    type: string
    sql: ${TABLE}."L4_category_name" ;;
  }

  dimension: l4_category_name_en {
    type: string
    sql: ${TABLE}."L4_category_name_en" ;;
  }

  dimension: l5_category_id {
    type: string
    sql: ${TABLE}."L5_category_id" ;;
  }

  dimension: l5_category_name {
    type: string
    sql: ${TABLE}."L5_category_name" ;;
  }

  dimension: l5_category_name_en {
    type: string
    sql: ${TABLE}."L5_category_name_en" ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}."manufacturer" ;;
  }

  dimension: my_five {
    type: string
    sql: ${TABLE}."my_five" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: name_en {
    type: string
    sql: ${TABLE}."name_en" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."order_id" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension: origin_platform {
    type: string
    sql: ${TABLE}."origin_platform" ;;
  }

  dimension: original_price {
    type: number
    sql: ${TABLE}."original_price" ;;
  }

  dimension: pa_original_price {
    type: number
    sql: ${TABLE}."pa_original_price" ;;
  }

  dimension: pa_promoted {
    type: string
    sql: ${TABLE}."pa_promoted" ;;
  }

  dimension: pa_reason {
    type: string
    sql: ${TABLE}."pa_reason" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
  }

  dimension: product_name_en {
    type: string
    sql: ${TABLE}."product_name_en" ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}."product_type" ;;
  }

  dimension: total_bottle_count {
    type: number
    sql: ${TABLE}."total_bottle_count" ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}."unit" ;;
  }

  dimension: unit_unified {
    type: string
    sql: ${TABLE}."unit_unified" ;;
  }

  dimension: vat_rate {
    type: number
    sql: ${TABLE}."vat_rate" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      l5_category_name,
      crate_l1_category_name,
      l2_category_name,
      l4_category_name,
      l1_category_name,
      bottle_supplier_name,
      product_name,
      warehouse_name,
      l3_category_name,
      name,
      order.courier_name,
      order.warehouse_name,
      order.delivery_point_name,
      order.id
    ]
  }
}
