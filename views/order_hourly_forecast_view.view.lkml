view: order_hourly_forecast_view {
  sql_table_name: "WORKSPACE_233686783"."order_hourly_forecast_view"
    ;;

  dimension: abs_error {
    type: number
    sql: ${TABLE}."abs_error" ;;
  }

  dimension: abs_pct_error {
    type: number
    sql: ${TABLE}."abs_pct_error" ;;
  }

  dimension: actual_hour_share {
    type: number
    sql: ${TABLE}."actual_hour_share" ;;
  }

  dimension: avg_actual_orders_4w {
    type: number
    sql: ${TABLE}."avg_actual_orders_4w" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}."domain" ;;
  }

  dimension: error {
    type: number
    sql: ${TABLE}."error" ;;
  }

  dimension: fc_capacity {
    type: number
    sql: ${TABLE}."fc_capacity" ;;
  }

  dimension: log_capacity {
    type: number
    sql: ${TABLE}."log_capacity" ;;
  }

  dimension: max_actual_orders_4w {
    type: number
    sql: ${TABLE}."max_actual_orders_4w" ;;
  }

  dimension: min_actual_orders_4w {
    type: number
    sql: ${TABLE}."min_actual_orders_4w" ;;
  }

  dimension: missing_log_capacity {
    type: yesno
    sql: ${TABLE}."missing_log_capacity" ;;
  }

  dimension: predicted_hour_share {
    type: number
    sql: ${TABLE}."predicted_hour_share" ;;
  }

  dimension: predicted_orders {
    type: number
    sql: ${TABLE}."predicted_orders" ;;
  }

  dimension: predicted_shape_correction {
    type: number
    sql: ${TABLE}."predicted_shape_correction" ;;
  }

  dimension: real_orders {
    type: number
    sql: ${TABLE}."real_orders" ;;
  }

  dimension: shape_abs_error {
    type: number
    sql: ${TABLE}."shape_abs_error" ;;
  }

  dimension: shape_abs_pct_error {
    type: number
    sql: ${TABLE}."shape_abs_pct_error" ;;
  }

  dimension: shape_error {
    type: number
    sql: ${TABLE}."shape_error" ;;
  }

  dimension_group: slot_ts {
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
    sql: ${TABLE}."slot_ts" ;;
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
