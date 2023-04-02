view: warranty_claim_product {
  sql_table_name: "WORKSPACE_233686783"."warranty_claim_product"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: actions_type {
    type: string
    sql: ${TABLE}."actions_type" ;;
  }

  dimension: additions_value {
    type: number
    sql: ${TABLE}."additions_value" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."amount" ;;
  }

  dimension: checked_on_the_table {
    type: string
    sql: ${TABLE}."checked_on_the_table" ;;
  }

  dimension: compensation_value {
    type: number
    sql: ${TABLE}."compensation_value" ;;
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

  dimension: created_by {
    type: string
    sql: ${TABLE}."created_by" ;;
  }

  dimension: credit_bonus {
    type: number
    sql: ${TABLE}."credit_bonus" ;;
  }

  dimension: credits_amount {
    type: number
    sql: ${TABLE}."credits_amount" ;;
  }

  dimension: days_to_refund {
    type: number
    sql: ${TABLE}."days_to_refund" ;;
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

  dimension: fetched_by_user {
    type: string
    sql: ${TABLE}."fetched_by_user" ;;
  }

  dimension: image_added {
    type: string
    sql: ${TABLE}."image_added" ;;
  }

  dimension: in_courier_buffer_by {
    type: string
    sql: ${TABLE}."in_courier_buffer_by" ;;
  }

  dimension: in_courier_buffer_by_name {
    type: string
    sql: ${TABLE}."in_courier_buffer_by_name" ;;
  }

  dimension: in_expedition_by {
    type: string
    sql: ${TABLE}."in_expedition_by" ;;
  }

  dimension: in_expedition_by_name {
    type: string
    sql: ${TABLE}."in_expedition_by_name" ;;
  }

  dimension: in_reusable_bag {
    type: string
    sql: ${TABLE}."in_reusable_bag" ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}."note" ;;
  }

  dimension: order_field_amount {
    type: number
    sql: ${TABLE}."order_field_amount" ;;
  }

  dimension: order_item_id {
    type: string
    sql: ${TABLE}."order_item_id" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension_group: orders {
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
    sql: ${TABLE}."orders_time" ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}."origin" ;;
  }

  dimension: packer_id {
    type: string
    sql: ${TABLE}."packer_id" ;;
  }

  dimension: packer_name {
    type: string
    sql: ${TABLE}."packer_name" ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}."reason" ;;
  }

  dimension: reason_cat {
    type: string
    sql: ${TABLE}."reason_cat" ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}."sector" ;;
  }

  dimension: solution {
    type: string
    sql: ${TABLE}."solution" ;;
  }

  dimension: sorter_id {
    type: string
    sql: ${TABLE}."sorter_id" ;;
  }

  dimension: sorter_name {
    type: string
    sql: ${TABLE}."sorter_name" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."source" ;;
  }

  dimension: source_api_type {
    type: string
    sql: ${TABLE}."source_api_type" ;;
  }

  dimension: subjective_reason {
    type: string
    sql: ${TABLE}."subjective_reason" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."table_name" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}."value" ;;
  }

  dimension: wapi_pipeline_id {
    type: string
    sql: ${TABLE}."wapi_pipeline_id" ;;
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

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  dimension: warranty_claim_id {
    type: string
    sql: ${TABLE}."warranty_claim_id" ;;
  }

  dimension: warranty_claim_unique_id {
    type: string
    sql: ${TABLE}."warranty_claim_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      in_expedition_by_name,
      table_name,
      in_courier_buffer_by_name,
      packer_name,
      sorter_name,
      warehouse_inventory.warehouse_name,
      warehouse_inventory.id,
      warehouse_inventory.country_of_origin_name,
      warehouse_inventory.primary_supplier_name
    ]
  }
}
