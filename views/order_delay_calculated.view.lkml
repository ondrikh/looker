view: order_delay_calculated {
  sql_table_name: "WORKSPACE_233686783"."order_delay_calculated"
    ;;

  dimension: arrival_delay_first_estimate {
    type: number
    sql: ${TABLE}."arrival_delay_first_estimate" ;;
  }

  dimension: arrival_delay_last_estimate {
    type: number
    sql: ${TABLE}."arrival_delay_last_estimate" ;;
  }

  dimension_group: arrival_estimate {
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
    sql: ${TABLE}."arrival_estimate" ;;
  }

  dimension_group: arrival_expected {
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
    sql: ${TABLE}."arrival_expected" ;;
  }

  dimension_group: arrived {
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
    sql: ${TABLE}."arrived_at" ;;
  }

  dimension: cargo_id {
    type: string
    sql: ${TABLE}."cargo_id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: delay_at_customer {
    type: number
    sql: ${TABLE}."delay_at_customer" ;;
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

  dimension: driving_from_previous_delay {
    type: number
    sql: ${TABLE}."driving_from_previous_delay" ;;
  }

  dimension: handover_delay {
    type: number
    sql: ${TABLE}."handover_delay" ;;
  }

  dimension: is_asap {
    type: number
    sql: ${TABLE}."is_asap" ;;
  }

  dimension: is_region {
    type: number
    sql: ${TABLE}."is_region" ;;
  }

  dimension: master_order_unique_id {
    type: string
    sql: ${TABLE}."master_order_unique_id" ;;
  }

  dimension_group: max_in_courier_buffer {
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
    sql: ${TABLE}."max_in_courier_buffer" ;;
  }

  dimension_group: max_in_expedition {
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
    sql: ${TABLE}."max_in_expedition_at" ;;
  }

  dimension_group: max_picked {
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
    sql: ${TABLE}."max_picked_at" ;;
  }

  dimension_group: min_in_courier_buffer {
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
    sql: ${TABLE}."min_in_courier_buffer" ;;
  }

  dimension_group: min_in_expedition {
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
    sql: ${TABLE}."min_in_expedition_at" ;;
  }

  dimension_group: order_create {
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
    sql: ${TABLE}."order_create_time" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension_group: pick_till {
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
    sql: ${TABLE}."pick_till" ;;
  }

  dimension: picking_delay_min {
    type: number
    sql: ${TABLE}."picking_delay_min" ;;
  }

  dimension: planned_stop {
    type: number
    sql: ${TABLE}."planned_stop" ;;
  }

  dimension: real_stop {
    type: number
    sql: ${TABLE}."real_stop" ;;
  }

  dimension: route_unique_id {
    type: string
    sql: ${TABLE}."route_unique_id" ;;
  }

  dimension: sub_order {
    type: number
    sql: ${TABLE}."sub_order" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
