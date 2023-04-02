view: inbound_forecast_accuracy {
  sql_table_name: "WORKSPACE_233686783"."inbound_forecast_accuracy"
    ;;

  dimension_group: date {
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
    sql: ${TABLE}."date" ;;
  }

  dimension: final_inbound_forecast {
    type: number
    sql: ${TABLE}."final_inbound_forecast" ;;
  }

  dimension: pipeline_name {
    type: string
    sql: ${TABLE}."pipeline_name" ;;
  }

  dimension: received_amount {
    type: number
    sql: ${TABLE}."received_amount" ;;
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

  dimension: temperature_mode {
    type: string
    sql: ${TABLE}."temperature_mode" ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}."unit" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [pipeline_name]
  }
}
