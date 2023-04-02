view: picking_item {
  sql_table_name: "WORKSPACE_233686783"."picking_item"
    ;;
  drill_fields: [picking_item_id]

  dimension: picking_item_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."picking_item_id" ;;
  }

  dimension: action_id {
    type: string
    sql: ${TABLE}."action_id" ;;
  }

  dimension: actions_type {
    type: string
    sql: ${TABLE}."actions_type" ;;
  }

  dimension: bonus {
    type: number
    sql: ${TABLE}."bonus" ;;
  }

  dimension: conversion_rate_to_euro {
    type: number
    sql: ${TABLE}."conversion_rate_to_euro" ;;
  }

  dimension: count_picking_item {
    type: number
    sql: ${TABLE}."count" ;;
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

  dimension: credit_note_bonus {
    type: number
    sql: ${TABLE}."credit_note_bonus" ;;
  }

  dimension: data_bonus {
    type: number
    sql: ${TABLE}."data_bonus" ;;
  }

  dimension: days_from_replenishment {
    type: number
    sql: ${TABLE}."days_from_replenishment" ;;
  }

  dimension: fetched_amount {
    type: number
    sql: ${TABLE}."fetched_amount" ;;
  }

  dimension_group: fetched {
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
    sql: ${TABLE}."fetched_at" ;;
  }

  dimension: fetched_by_id {
    type: string
    sql: ${TABLE}."fetched_by_id" ;;
  }

  dimension: is_revenue {
    type: number
    sql: ${TABLE}."is_revenue" ;;
  }

  dimension: logistic_bonus {
    type: number
    sql: ${TABLE}."logistic_bonus" ;;
  }

  dimension: marketing_bonus {
    type: number
    sql: ${TABLE}."marketing_bonus" ;;
  }

  dimension: monthdiff_now_vs_deliver_at {
    type: number
    sql: ${TABLE}."monthdiff_now_vs_deliver_at" ;;
  }

  dimension: on_top_bonus {
    type: number
    sql: ${TABLE}."on_top_bonus" ;;
  }

  dimension: order_field_id {
    type: string
    sql: ${TABLE}."order_field_id" ;;
  }

  dimension: order_field_unique_id {
    type: string
    sql: ${TABLE}."order_field_unique_id" ;;
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

  dimension: pack_items {
    type: number
    sql: ${TABLE}."pack_items" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."source" ;;
  }

  dimension: source_api_type {
    type: string
    sql: ${TABLE}."source_api_type" ;;
  }

  dimension: source_category_id {
    type: string
    sql: ${TABLE}."source_category_id" ;;
  }

  dimension: supplier_id {
    type: string
    sql: ${TABLE}."supplier_id" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: supplier_unique_id {
    type: string
    sql: ${TABLE}."supplier_unique_id" ;;
  }

  dimension: supplier_vat_no {
    type: string
    sql: ${TABLE}."supplier_vat_no" ;;
  }

  dimension: turnover_bonus {
    type: number
    sql: ${TABLE}."turnover_bonus" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: unit_buy_price_excl_vat {
    type: number
    sql: ${TABLE}."unit_buy_price_excl_vat" ;;
  }

  dimension: unit_buy_price_incl_vat {
    type: number
    sql: ${TABLE}."unit_buy_price_incl_vat" ;;
  }

  dimension: unit_sell_price_excl_vat {
    type: number
    sql: ${TABLE}."unit_sell_price_excl_vat" ;;
  }

  dimension: unit_sell_price_incl_vat {
    type: number
    sql: ${TABLE}."unit_sell_price_incl_vat" ;;
  }

  dimension: unit_weight {
    type: number
    sql: ${TABLE}."unit_weight" ;;
  }

  dimension: vat_rate {
    type: number
    sql: ${TABLE}."vat_rate" ;;
  }

  dimension: warehouse_inventory_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."warehouse_inventory_id" ;;
  }

  dimension: warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."warehouse_inventory_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      picking_item_id,
      supplier_name,
      warehouse_inventory.warehouse_name,
      warehouse_inventory.id,
      warehouse_inventory.country_of_origin_name,
      warehouse_inventory.primary_supplier_name,
      order.courier_name,
      order.warehouse_name,
      order.delivery_point_name,
      order.id,
      nb_shelf_report.count,
      staging604a0ee1d21fc.count,
      staging60d099c2acd3e.count,
      staging61c427f894de6.count,
      staging61cc8647d6fc1.count
    ]
  }
}
