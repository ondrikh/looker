view: order_forecast_daily_longterm {
  sql_table_name: "WORKSPACE_233686783"."order_forecast_daily_longterm"
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

  dimension_group: ds {
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
    sql: ${TABLE}."ds" ;;
  }

  dimension: trend {
    type: number
    sql: ${TABLE}."trend" ;;
  }

  dimension: warehouse_id {
    type: number
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: yearly {
    type: number
    sql: ${TABLE}."yearly" ;;
  }

  dimension: yhat {
    type: number
    sql: ${TABLE}."yhat" ;;
  }

  dimension: yhat_lower {
    type: number
    sql: ${TABLE}."yhat_lower" ;;
  }

  dimension: yhat_upper {
    type: number
    sql: ${TABLE}."yhat_upper" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
