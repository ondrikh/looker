view: eval_order_predictions_backup {
  sql_table_name: "WORKSPACE_233686783"."eval_order_predictions_backup"
    ;;

  dimension: actual_orders {
    type: number
    sql: ${TABLE}."actual_orders" ;;
  }

  dimension: actual_orders_final {
    type: number
    sql: ${TABLE}."actual_orders_final" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: max_dispatching_orders {
    type: number
    sql: ${TABLE}."max_dispatching_orders" ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}."model" ;;
  }

  dimension: predicted_orders {
    type: number
    sql: ${TABLE}."predicted_orders" ;;
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

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
