view: realtime_order_fc_snapshot_v1 {
  sql_table_name: "WORKSPACE_233686783"."realtime_order_fc_snapshot_v1"
    ;;

  dimension: available_slot_capacity {
    type: string
    sql: ${TABLE}."available_slot_capacity" ;;
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

  dimension: max_orders_slot_limit {
    type: number
    sql: ${TABLE}."max_orders_slot_limit" ;;
  }

  dimension: order_plan {
    type: string
    sql: ${TABLE}."order_plan" ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}."orders" ;;
  }

  dimension: slot_capacity_till_now {
    type: number
    sql: ${TABLE}."slot_capacity_till_now" ;;
  }

  dimension: slot_usage_till_now {
    type: number
    sql: ${TABLE}."slot_usage_till_now" ;;
  }

  dimension: slots_used_till_now {
    type: number
    sql: ${TABLE}."slots_used_till_now" ;;
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
    type: string
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
