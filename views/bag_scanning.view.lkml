view: bag_scanning {
  sql_table_name: "WORKSPACE_233686783"."bag_scanning"
    ;;

  dimension: bag_ean {
    type: string
    sql: ${TABLE}."bag_ean" ;;
  }

  dimension: bag_scanning {
    type: number
    sql: ${TABLE}."bag_scanning" ;;
  }

  dimension: bag_type {
    type: string
    sql: ${TABLE}."bag_type" ;;
  }

  dimension: bag_unique_ean {
    type: string
    sql: ${TABLE}."bag_unique_ean" ;;
  }

  dimension: bags_total_in_order {
    type: number
    sql: ${TABLE}."bags_total_in_order" ;;
  }

  dimension: cargo_order_unique_id {
    type: string
    sql: ${TABLE}."cargo_order_unique_id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: courier_id {
    type: string
    sql: ${TABLE}."courier_id" ;;
  }

  dimension: courier_name {
    type: string
    sql: ${TABLE}."courier_name" ;;
  }

  dimension: courier_unique_id {
    type: string
    sql: ${TABLE}."courier_unique_id" ;;
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

  dimension_group: deliver_till {
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
    sql: ${TABLE}."deliver_till" ;;
  }

  dimension: delivery_zone {
    type: string
    sql: ${TABLE}."delivery_zone" ;;
  }

  dimension: is_asap {
    type: number
    sql: ${TABLE}."is_asap" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension: route_unique_id {
    type: string
    sql: ${TABLE}."route_unique_id" ;;
  }

  dimension_group: scan_end {
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
    sql: ${TABLE}."scan_end" ;;
  }

  dimension_group: scan_start {
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
    sql: ${TABLE}."scan_start" ;;
  }

  dimension: scan_type {
    type: string
    sql: ${TABLE}."scan_type" ;;
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

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [courier_name, warehouse_name]
  }
}
