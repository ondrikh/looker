view: order_forecast_realtime_predictions {
  sql_table_name: "WORKSPACE_233686783"."order_forecast_realtime_predictions"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}."domain" ;;
  }

  dimension: prediction {
    type: number
    sql: ${TABLE}."prediction" ;;
  }

  dimension: raw_prediction {
    type: number
    sql: ${TABLE}."raw_prediction" ;;
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
    type: number
    sql: ${TABLE}."warehouse_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
