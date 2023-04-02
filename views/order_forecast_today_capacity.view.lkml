view: order_forecast_today_capacity {
  sql_table_name: "WORKSPACE_233686783"."order_forecast_today_capacity"
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

  dimension: fc_capacity {
    type: number
    sql: ${TABLE}."fc_capacity" ;;
  }

  dimension: is_final {
    type: yesno
    sql: ${TABLE}."is_final" ;;
  }

  dimension: log_capacity {
    type: number
    sql: ${TABLE}."log_capacity" ;;
  }

  dimension: order_count {
    type: number
    sql: ${TABLE}."order_count" ;;
  }

  dimension: sku_sold {
    type: number
    sql: ${TABLE}."sku_sold" ;;
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
