view: order_forecast_components {
  sql_table_name: "WORKSPACE_233686783"."order_forecast_components"
    ;;

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

  dimension_group: day_of_prediction {
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
    sql: ${TABLE}."day_of_prediction" ;;
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}."order_type" ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}."snapshot_date" ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}."value" ;;
  }

  dimension: variable {
    type: string
    sql: ${TABLE}."variable" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_type {
    type: string
    sql: ${TABLE}."warehouse_type" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
