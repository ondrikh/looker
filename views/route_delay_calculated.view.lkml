view: route_delay_calculated {
  sql_table_name: "WORKSPACE_233686783"."route_delay_calculated"
    ;;

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

  dimension: engine_loading_setup {
    type: number
    sql: ${TABLE}."engine_loading_setup" ;;
  }

  dimension: engine_preloading_setup {
    type: number
    sql: ${TABLE}."engine_preloading_setup" ;;
  }

  dimension: is_express {
    type: number
    sql: ${TABLE}."is_express" ;;
  }

  dimension: is_manual {
    type: number
    sql: ${TABLE}."is_manual" ;;
  }

  dimension: is_region {
    type: number
    sql: ${TABLE}."is_region" ;;
  }

  dimension: loading_calculated {
    type: number
    sql: ${TABLE}."loading_calculated" ;;
  }

  dimension: loading_delay {
    type: number
    sql: ${TABLE}."loading_delay" ;;
  }

  dimension_group: max_courier_buffer_at_route {
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
    sql: ${TABLE}."max_courier_buffer_at_route" ;;
  }

  dimension_group: min_courier_buffer_at_route {
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
    sql: ${TABLE}."min_courier_buffer_at_route" ;;
  }

  dimension: pre_loading_calculated {
    type: number
    sql: ${TABLE}."pre_loading_calculated" ;;
  }

  dimension: preloading_delay {
    type: number
    sql: ${TABLE}."preloading_delay" ;;
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

  dimension: solvertech_unique_id {
    type: string
    sql: ${TABLE}."solvertech_unique_id" ;;
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

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
