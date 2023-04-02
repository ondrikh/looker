view: logistic_route {
  sql_table_name: "WORKSPACE_233686783"."logistic_route"
    ;;

  dimension_group: accepted {
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
    sql: ${TABLE}."accepted_at" ;;
  }

  dimension_group: assignments_created {
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
    sql: ${TABLE}."assignments_created_at" ;;
  }

  dimension: avg_changeover_in_sec {
    type: number
    sql: ${TABLE}."avg_changeover_in_sec" ;;
  }

  dimension_group: break_request {
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
    sql: ${TABLE}."break_request_at" ;;
  }

  dimension_group: courier_back_at_warehouse {
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
    sql: ${TABLE}."courier_back_at_warehouse" ;;
  }

  dimension: courier_id {
    type: string
    sql: ${TABLE}."courier_id" ;;
  }

  dimension_group: courier_is_at_warehouse {
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
    sql: ${TABLE}."courier_is_at_warehouse" ;;
  }

  dimension: courier_name {
    type: string
    sql: ${TABLE}."courier_name" ;;
  }

  dimension: courier_unique_id {
    type: string
    sql: ${TABLE}."courier_unique_id" ;;
  }

  dimension_group: created_at {
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

  dimension: crossdock_id {
    type: string
    sql: ${TABLE}."crossdock_id" ;;
  }

  dimension: crossdock_unique_id {
    type: string
    sql: ${TABLE}."crossdock_unique_id" ;;
  }

  dimension: departure_expected {
    type: string
    sql: ${TABLE}."departure_expected" ;;
  }

  dimension_group: departure_real {
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
    sql: ${TABLE}."departure_real" ;;
  }

  dimension: distance_from_last_order {
    type: number
    sql: ${TABLE}."distance_from_last_order" ;;
  }

  dimension_group: first_bag_scanned {
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
    sql: ${TABLE}."first_bag_scanned" ;;
  }

  dimension: is_express {
    type: string
    sql: ${TABLE}."is_express" ;;
  }

  dimension_group: last_bag_scanned {
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
    sql: ${TABLE}."last_bag_scanned" ;;
  }

  dimension: last_order_to_warehouse_distance_in_km {
    type: number
    sql: ${TABLE}."last_order_to_warehouse_distance_in_km" ;;
  }

  dimension: loading_time {
    type: number
    sql: ${TABLE}."loading_time" ;;
  }

  dimension: route_duration_in_minutes {
    type: number
    sql: ${TABLE}."route_duration_in_minutes" ;;
  }

  dimension_group: route_finished {
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
    sql: ${TABLE}."route_finished_at" ;;
  }

  dimension: route_id {
    type: string
    sql: ${TABLE}."route_id" ;;
  }

  dimension: route_orders {
    type: string
    sql: ${TABLE}."route_orders" ;;
  }

  dimension: route_unique_id {
    type: string
    sql: ${TABLE}."route_unique_id" ;;
  }

  dimension_group: warehouse_arrival {
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
    sql: ${TABLE}."warehouse_arrival" ;;
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

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [warehouse_name, courier_name]
  }
}
