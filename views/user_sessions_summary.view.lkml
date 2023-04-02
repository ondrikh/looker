view: user_sessions_summary {
  sql_table_name: "WORKSPACE_233686783"."user_sessions_summary"
    ;;

  dimension: category {
    type: string
    sql: ${TABLE}."category" ;;
  }

  dimension: customer_segment {
    type: string
    sql: ${TABLE}."customer_segment" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: previous_month {
    type: number
    sql: ${TABLE}."previous_month" ;;
  }

  dimension: previous_week {
    type: number
    sql: ${TABLE}."previous_week" ;;
  }

  dimension_group: week_end {
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
    sql: ${TABLE}."week_end_date" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
