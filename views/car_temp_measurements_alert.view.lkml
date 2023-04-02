view: car_temp_measurements_alert {
  sql_table_name: "WORKSPACE_233686783"."car_temp_measurements_alert"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: avg_temperature {
    type: number
    sql: ${TABLE}."avg_temperature" ;;
  }

  dimension: car_name {
    type: string
    sql: ${TABLE}."car_name" ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}."code" ;;
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

  dimension: number_of_records {
    type: number
    sql: ${TABLE}."number_of_records" ;;
  }

  dimension: orders_remaining {
    type: number
    sql: ${TABLE}."orders_remaining" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."phone" ;;
  }

  dimension: registration_number {
    type: string
    sql: ${TABLE}."registration_number" ;;
  }

  dimension: route_id {
    type: string
    sql: ${TABLE}."route_id" ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}."timestamp" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: vehicle_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."vehicle_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      warehouse_name,
      courier_name,
      car_name,
      vehicles.id,
      vehicles.name
    ]
  }
}
