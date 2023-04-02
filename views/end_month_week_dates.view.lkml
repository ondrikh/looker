view: end_month_week_dates {
  sql_table_name: "WORKSPACE_233686783"."end_month_week_dates"
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

  dimension: day_of_week {
    type: number
    sql: ${TABLE}."day_of_week" ;;
  }

  dimension: last_day_of_month {
    type: number
    sql: ${TABLE}."last_day_of_month" ;;
  }

  dimension: week_of_year {
    type: number
    sql: ${TABLE}."week_of_year" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
