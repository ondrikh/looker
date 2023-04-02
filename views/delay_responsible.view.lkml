view: delay_responsible {
  sql_table_name: "WORKSPACE_233686783"."delay_responsible"
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

  dimension: cargo_unique_id {
    type: string
    sql: ${TABLE}."cargo_unique_id" ;;
  }

  dimension: cart_delay {
    type: number
    sql: ${TABLE}."cart_delay" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: delay {
    type: number
    sql: ${TABLE}."delay" ;;
  }

  dimension: delay_loading {
    type: number
    sql: ${TABLE}."delay_loading" ;;
  }

  dimension: delay_on_departure {
    type: number
    sql: ${TABLE}."delay_on_departure" ;;
  }

  dimension: delay_on_preparation {
    type: number
    sql: ${TABLE}."delay_on_preparation" ;;
  }

  dimension: delay_on_way {
    type: number
    sql: ${TABLE}."delay_on_way" ;;
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

  dimension: expedition_delay {
    type: number
    sql: ${TABLE}."expedition_delay" ;;
  }

  dimension: is_express {
    type: string
    sql: ${TABLE}."is_express" ;;
  }

  dimension: premium_order {
    type: number
    sql: ${TABLE}."premium_order" ;;
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

  dimension_group: route_on_cart {
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
    sql: ${TABLE}."route_on_cart" ;;
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

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
