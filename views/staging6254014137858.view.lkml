view: staging6254014137858 {
  sql_table_name: "WORKSPACE_233686783"."staging6254014137858"
    ;;

  dimension: amount {
    type: number
    sql: ${TABLE}."amount" ;;
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
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."created_at" ;;
  }

  dimension: days_from_replenishment {
    type: number
    sql: ${TABLE}."days_from_replenishment" ;;
  }

  dimension: id_shrinkage {
    type: string
    sql: ${TABLE}."id (shrinkage)" ;;
  }

  dimension_group: join {
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
    sql: ${TABLE}."join_date" ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}."message" ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}."note" ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}."reason" ;;
  }

  dimension: supplier_id {
    type: string
    sql: ${TABLE}."supplier_id" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: unit_buy_price_excl_vat {
    type: number
    sql: ${TABLE}."unit_buy_price_excl_vat" ;;
  }

  dimension: unit_buy_price_incl_vat {
    type: number
    sql: ${TABLE}."unit_buy_price_incl_vat" ;;
  }

  dimension: utilization_id {
    type: string
    sql: ${TABLE}."utilization_id" ;;
  }

  dimension: utilization_unique_id {
    type: string
    sql: ${TABLE}."utilization_unique_id" ;;
  }

  dimension: virtual_replenishment {
    type: string
    sql: ${TABLE}."virtual_replenishment" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
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

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      supplier_name,
      warehouse_name,
      warehouse_inventory.warehouse_name,
      warehouse_inventory.id,
      warehouse_inventory.country_of_origin_name,
      warehouse_inventory.primary_supplier_name
    ]
  }
}
