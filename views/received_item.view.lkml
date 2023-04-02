view: received_item {
  sql_table_name: "WORKSPACE_233686783"."received_item"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."amount" ;;
  }

  dimension: automated_replenishment {
    type: string
    sql: ${TABLE}."automated_replenishment" ;;
  }

  dimension: cash_back {
    type: number
    sql: ${TABLE}."cash_back" ;;
  }

  dimension_group: closed {
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
    sql: ${TABLE}."closed_at" ;;
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

  dimension: data_bonus {
    type: number
    sql: ${TABLE}."data_bonus" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: dispo_amount_at_closing_request {
    type: number
    sql: ${TABLE}."dispo_amount_at_closing_request" ;;
  }

  dimension: invoice_number {
    type: string
    sql: ${TABLE}."invoice_number" ;;
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

  dimension: logistic_bonus {
    type: number
    sql: ${TABLE}."logistic_bonus" ;;
  }

  dimension: marketing_bonus {
    type: number
    sql: ${TABLE}."marketing_bonus" ;;
  }

  dimension: matched_commercial_order_to_warehouse_request {
    type: string
    sql: ${TABLE}."matched_commercial_order_to_warehouse_request" ;;
  }

  dimension: order_channel {
    type: string
    sql: ${TABLE}."order_channel" ;;
  }

  dimension_group: replenished_at {
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

  dimension: request_id {
    type: string
    sql: ${TABLE}."request_id" ;;
  }

  dimension: returnable_packaging {
    type: string
    sql: ${TABLE}."returnable_packaging" ;;
  }

  dimension: supplier {
    type: string
    sql: ${TABLE}."supplier" ;;
  }

  dimension: supplier_dic {
    type: string
    sql: ${TABLE}."supplier_dic" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: timestampdiff_minute_wr_closed_at_ra_replenished_at {
    type: number
    sql: ${TABLE}."timestampdiff_minute_wr_closed_at_ra_replenished_at" ;;
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

  dimension: virtual {
    type: string
    sql: ${TABLE}."virtual" ;;
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

  dimension: warehouse_request_item_id {
    type: string
    sql: ${TABLE}."warehouse_request_item_id" ;;
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
