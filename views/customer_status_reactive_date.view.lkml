view: customer_status_reactive_date {
  sql_table_name: "WORKSPACE_233686783"."customer_status_reactive_date"
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

  dimension: dslo {
    type: number
    sql: ${TABLE}."dslo" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
