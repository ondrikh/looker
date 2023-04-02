view: order_forecast_realtime_snapshot_v2 {
  sql_table_name: "WORKSPACE_233686783"."order_forecast_realtime_snapshot_v2"
    ;;

  dimension: available_log_capacity {
    type: number
    sql: ${TABLE}."available_log_capacity" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: current_orders {
    type: number
    sql: ${TABLE}."current_orders" ;;
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

  dimension: domain {
    type: string
    sql: ${TABLE}."domain" ;;
  }

  dimension_group: last_slot {
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
    sql: ${TABLE}."last_slot" ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}."model" ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}."modified_at" ;;
  }

  dimension: predicted_orders {
    type: number
    sql: ${TABLE}."predicted_orders" ;;
  }

  dimension: real_orders {
    type: number
    sql: ${TABLE}."real_orders" ;;
  }

  dimension_group: snapshot_ts {
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
    sql: ${TABLE}."snapshot_ts" ;;
  }

  dimension: total_capacity {
    type: number
    sql: ${TABLE}."total_capacity" ;;
  }

  dimension: warehouse_id {
    type: number
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_order_plan {
    type: number
    sql: ${TABLE}."warehouse_order_plan" ;;
  }

  dimension: warehouse_real_orders {
    type: number
    sql: ${TABLE}."warehouse_real_orders" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
