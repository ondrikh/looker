view: order_forecast_realtime_snapshot {
  sql_table_name: "WORKSPACE_233686783"."order_forecast_realtime_snapshot"
    ;;

  dimension: available_log_capacity {
    type: number
    sql: ${TABLE}."available_log_capacity" ;;
  }

  dimension: capacity_correction {
    type: number
    sql: ${TABLE}."capacity_correction" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
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

  dimension: final_prediction {
    type: number
    sql: ${TABLE}."final_prediction" ;;
  }

  dimension: order_plan {
    type: number
    sql: ${TABLE}."order_plan" ;;
  }

  dimension: past_orders {
    type: number
    sql: ${TABLE}."past_orders" ;;
  }

  dimension: predicted_orders {
    type: number
    sql: ${TABLE}."predicted_orders" ;;
  }

  dimension: prediction_correction {
    type: number
    sql: ${TABLE}."prediction_correction" ;;
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

  dimension: total_orders {
    type: number
    sql: ${TABLE}."total_orders" ;;
  }

  dimension: warehouse_id {
    type: number
    sql: ${TABLE}."warehouse_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
