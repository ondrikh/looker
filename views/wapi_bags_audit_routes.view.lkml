view: wapi_bags_audit_routes {
  sql_table_name: "WORKSPACE_233686783"."wapi_bags_audit_routes"
    ;;

  dimension_group: bag_created {
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
    sql: ${TABLE}."bag_created_at" ;;
  }

  dimension: bag_ean {
    type: string
    sql: ${TABLE}."bag_ean" ;;
  }

  dimension: cargo_order_id {
    type: string
    sql: ${TABLE}."cargo_order_id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: created_date {
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
    sql: ${TABLE}."created_date" ;;
  }

  dimension_group: in_courier_buffer {
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
    sql: ${TABLE}."in_courier_buffer_at" ;;
  }

  dimension_group: in_expedition {
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
    sql: ${TABLE}."in_expedition_at" ;;
  }

  dimension: is_express {
    type: string
    sql: ${TABLE}."is_express" ;;
  }

  dimension: is_manual {
    type: string
    sql: ${TABLE}."is_manual" ;;
  }

  dimension: is_region {
    type: string
    sql: ${TABLE}."is_region" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."order_id" ;;
  }

  dimension: picking_crate_ean {
    type: string
    sql: ${TABLE}."picking_crate_ean" ;;
  }

  dimension: pipeline_type {
    type: string
    sql: ${TABLE}."pipeline_type" ;;
  }

  dimension_group: prioritization {
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
    sql: ${TABLE}."prioritization_time" ;;
  }

  dimension_group: released {
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
    sql: ${TABLE}."released_at" ;;
  }

  dimension_group: route_created {
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
    sql: ${TABLE}."route_created_at" ;;
  }

  dimension: route_unique_id {
    type: string
    sql: ${TABLE}."route_unique_id" ;;
  }

  dimension_group: scanned {
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
    sql: ${TABLE}."scanned_at" ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}."sector" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."table_name" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension_group: warehouse_departure {
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
    sql: ${TABLE}."warehouse_departure" ;;
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
      table_name,
      warehouse_name,
      order.courier_name,
      order.warehouse_name,
      order.delivery_point_name,
      order.id
    ]
  }
}
