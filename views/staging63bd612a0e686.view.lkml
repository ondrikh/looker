view: staging63bd612a0e686 {
  sql_table_name: "WORKSPACE_233686783"."staging63bd612a0e686"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: available_days {
    type: number
    sql: ${TABLE}."available_days" ;;
  }

  dimension: bonus {
    type: number
    sql: ${TABLE}."bonus" ;;
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

  dimension: durability_days {
    type: number
    sql: ${TABLE}."durability_days" ;;
  }

  dimension: durability_days_by_vendor {
    type: number
    sql: ${TABLE}."durability_days_by_vendor" ;;
  }

  dimension: durability_warning {
    type: string
    sql: ${TABLE}."durability_warning" ;;
  }

  dimension: durability_warning_days {
    type: number
    sql: ${TABLE}."durability_warning_days" ;;
  }

  dimension_group: join {
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
    sql: ${TABLE}."join_date" ;;
  }

  dimension: remaining {
    type: number
    sql: ${TABLE}."remaining" ;;
  }

  dimension: remaining_amount {
    type: number
    sql: ${TABLE}."remaining_amount" ;;
  }

  dimension: replenished_amount {
    type: number
    sql: ${TABLE}."replenished_amount" ;;
  }

  dimension_group: replenished {
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
    sql: ${TABLE}."replenished_at" ;;
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

  dimension: snapshot_id {
    type: string
    sql: ${TABLE}."snapshot_id" ;;
  }

  dimension: snapshot_unique_id {
    type: string
    sql: ${TABLE}."snapshot_unique_id" ;;
  }

  dimension: supplier_code {
    type: string
    sql: ${TABLE}."supplier_code" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
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

  dimension: used_amount {
    type: number
    sql: ${TABLE}."used_amount" ;;
  }

  dimension: vat_rate {
    type: number
    sql: ${TABLE}."vat_rate" ;;
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
      id,
      supplier_name,
      warehouse_name,
      warehouse_inventory.warehouse_name,
      warehouse_inventory.id,
      warehouse_inventory.country_of_origin_name,
      warehouse_inventory.primary_supplier_name
    ]
  }
}
