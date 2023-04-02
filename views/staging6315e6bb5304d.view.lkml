view: staging6315e6bb5304d {
  sql_table_name: "WORKSPACE_233686783"."staging6315e6bb5304d"
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

  dimension: conversion_rate_to_euro {
    type: number
    sql: ${TABLE}."conversion_rate_to_euro" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension_group: expire {
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
    sql: ${TABLE}."expire" ;;
  }

  dimension: from_user_email {
    type: string
    sql: ${TABLE}."from_user_email" ;;
  }

  dimension: from_user_id {
    type: string
    sql: ${TABLE}."from_user_id" ;;
  }

  dimension: from_user_name {
    type: string
    sql: ${TABLE}."from_user_name" ;;
  }

  dimension_group: inserttime {
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
    sql: ${TABLE}."inserttime" ;;
  }

  dimension: order {
    type: string
    sql: ${TABLE}."order" ;;
  }

  dimension: order_related {
    type: string
    sql: ${TABLE}."order_related" ;;
  }

  dimension: parent_description {
    type: string
    sql: ${TABLE}."parent_description" ;;
  }

  dimension: parent_from_user_email {
    type: string
    sql: ${TABLE}."parent_from_user_email" ;;
  }

  dimension_group: parent_insert {
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
    sql: ${TABLE}."parent_insert_time" ;;
  }

  dimension: parent_order {
    type: string
    sql: ${TABLE}."parent_order" ;;
  }

  dimension: parent_type {
    type: string
    sql: ${TABLE}."parent_type" ;;
  }

  dimension: remaining {
    type: number
    sql: ${TABLE}."remaining" ;;
  }

  dimension_group: removed {
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
    sql: ${TABLE}."removed_time" ;;
  }

  dimension: sale_code_name {
    type: string
    sql: ${TABLE}."sale_code_name" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension_group: usedtime {
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
    sql: ${TABLE}."usedtime" ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}."user" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
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
    drill_fields: [id, from_user_name, sale_code_name, warehouse_name]
  }
}
