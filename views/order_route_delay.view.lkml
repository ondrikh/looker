view: order_route_delay {
  sql_table_name: "WORKSPACE_233686783"."order_route_delay"
    ;;

  dimension_group: arrival_real {
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
    sql: ${TABLE}."arrival_real" ;;
  }

  dimension: cargo_id {
    type: string
    sql: ${TABLE}."cargo_id" ;;
  }

  dimension: cargo_unigue_id {
    type: string
    sql: ${TABLE}."cargo_unigue_id" ;;
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

  dimension: delay {
    type: number
    sql: ${TABLE}."delay" ;;
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

  dimension_group: deliver_to_customer {
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
    sql: ${TABLE}."deliver_to_customer_at" ;;
  }

  dimension: delivery_zone {
    type: string
    sql: ${TABLE}."delivery_zone" ;;
  }

  dimension: departure_delay {
    type: number
    sql: ${TABLE}."departure_delay" ;;
  }

  dimension: expedition_delay {
    type: number
    sql: ${TABLE}."expedition_delay" ;;
  }

  dimension: is_express {
    type: string
    sql: ${TABLE}."is_express" ;;
  }

  dimension: load_delay {
    type: number
    sql: ${TABLE}."load_delay" ;;
  }

  dimension: on_route_delay {
    type: number
    sql: ${TABLE}."on_route_delay" ;;
  }

  dimension: route_id {
    type: string
    sql: ${TABLE}."route_id" ;;
  }

  dimension_group: route_in_expedition {
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
    sql: ${TABLE}."route_in_expedition" ;;
  }

  dimension: route_unique_id {
    type: string
    sql: ${TABLE}."route_unique_id" ;;
  }

  dimension: virtual_timeslot {
    type: string
    sql: ${TABLE}."virtual_timeslot" ;;
  }

  dimension_group: warehouse_departure_planned {
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
    sql: ${TABLE}."warehouse_departure_planned" ;;
  }

  dimension_group: warehouse_departure_real {
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
    sql: ${TABLE}."warehouse_departure_real" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  dimension: zone_city {
    type: string
    sql: ${TABLE}."zone_city" ;;
  }

  dimension: zone_region {
    type: string
    sql: ${TABLE}."zone_region" ;;
  }

  measure: count {
    type: count
    drill_fields: [courier_name]
  }
}
