view: delivery_slot_order_count_forecast {
  sql_table_name: "WORKSPACE_233686783"."delivery_slot_order_count_forecast"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
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

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
