view: realtime_order_fc_snapshot_v2 {
  sql_table_name: "WORKSPACE_233686783"."realtime_order_fc_snapshot_v2"
    ;;

  dimension: available_slot_capacity {
    type: number
    sql: ${TABLE}."available_slot_capacity" ;;
  }

  dimension: average_orders_by_time {
    type: number
    sql: ${TABLE}."average_orders_by_time" ;;
  }

  dimension: avg_orders_eod {
    type: number
    sql: ${TABLE}."avg_orders_eod" ;;
  }

  dimension: avg_share {
    type: number
    sql: ${TABLE}."avg_share" ;;
  }

  dimension: avg_share_eod {
    type: number
    sql: ${TABLE}."avg_share_eod" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: current_order_prediction {
    type: number
    sql: ${TABLE}."current_order_prediction" ;;
  }

  dimension: current_order_prediction_2 {
    type: number
    sql: ${TABLE}."current_order_prediction_2" ;;
  }

  dimension: current_orders_by_time {
    type: number
    sql: ${TABLE}."current_orders_by_time" ;;
  }

  dimension: current_ratio {
    type: number
    sql: ${TABLE}."current_ratio" ;;
  }

  dimension: expected_orders_eod {
    type: number
    sql: ${TABLE}."expected_orders_eod" ;;
  }

  dimension: expected_orders_for_today_eod {
    type: number
    sql: ${TABLE}."expected_orders_for_today_eod" ;;
  }

  dimension: expected_share_eod {
    type: number
    sql: ${TABLE}."expected_share_eod" ;;
  }

  dimension: max_orders_slot_limit {
    type: number
    sql: ${TABLE}."max_orders_slot_limit" ;;
  }

  dimension: order_plan {
    type: number
    sql: ${TABLE}."order_plan" ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}."orders" ;;
  }

  dimension: orders_from_prev_days {
    type: number
    sql: ${TABLE}."orders_from_prev_days" ;;
  }

  dimension: prediction {
    type: number
    sql: ${TABLE}."prediction" ;;
  }

  dimension: slot_usage_till_now {
    type: number
    sql: ${TABLE}."slot_usage_till_now" ;;
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

  dimension: warehouse_id {
    type: number
    sql: ${TABLE}."warehouse_id" ;;
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
