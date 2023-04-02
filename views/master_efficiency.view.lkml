view: master_efficiency {
  sql_table_name: "WORKSPACE_233686783"."master_efficiency"
    ;;

  dimension_group: arrival_date {
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
    sql: ${TABLE}."arrival_date" ;;
  }

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

  dimension: arrival_time {
    type: string
    sql: ${TABLE}."arrival_time" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: courier_name {
    type: string
    sql: ${TABLE}."courier_name" ;;
  }

  dimension: courier_unique_id {
    type: string
    sql: ${TABLE}."courier_unique_id" ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}."day_of_week" ;;
  }

  dimension: full_day_name_of_weekday {
    type: string
    sql: ${TABLE}."full_day_name_of_weekday" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension: route_unique_id {
    type: string
    sql: ${TABLE}."route_unique_id" ;;
  }

  dimension: shift_name {
    type: string
    sql: ${TABLE}."shift_name" ;;
  }

  dimension: shift_since {
    type: string
    sql: ${TABLE}."shift_since" ;;
  }

  dimension: shift_till {
    type: string
    sql: ${TABLE}."shift_till" ;;
  }

  dimension: shift_unique_id {
    type: string
    sql: ${TABLE}."shift_unique_id" ;;
  }

  dimension: short_day_name_of_weekday {
    type: string
    sql: ${TABLE}."short_day_name_of_weekday" ;;
  }

  dimension: slot_of_real_delivery {
    type: string
    sql: ${TABLE}."slot_of_real_delivery" ;;
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
    drill_fields: [shift_name, courier_name, warehouse_name]
  }
}
