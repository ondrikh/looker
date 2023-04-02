view: order_forecast_models {
  sql_table_name: "WORKSPACE_233686783"."order_forecast_models"
    ;;

  dimension: config {
    type: string
    sql: ${TABLE}."config" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}."domain" ;;
  }

  dimension: env {
    type: string
    sql: ${TABLE}."env" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}."version" ;;
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
