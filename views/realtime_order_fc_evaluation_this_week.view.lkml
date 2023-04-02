view: realtime_order_fc_evaluation_this_week {
  sql_table_name: "WORKSPACE_233686783"."realtime_order_fc_evaluation_this_week"
    ;;

  dimension_group: first_predicted_slot {
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
    sql: ${TABLE}."first_predicted_slot" ;;
  }

  dimension: mean_absolute_error {
    type: number
    sql: ${TABLE}."mean_absolute_error" ;;
  }

  dimension: mean_absolute_percentage_error {
    type: number
    sql: ${TABLE}."mean_absolute_percentage_error" ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}."model" ;;
  }

  dimension: predictions {
    type: number
    sql: ${TABLE}."predictions" ;;
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
