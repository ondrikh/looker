view: staging63bd6126d378a {
  sql_table_name: "WORKSPACE_233686783"."staging63bd6126d378a"
    ;;

  dimension: month {
    type: string
    sql: ${TABLE}."month" ;;
  }

  dimension: premium_origin {
    type: string
    sql: ${TABLE}."premium_origin" ;;
  }

  dimension: premium_type {
    type: string
    sql: ${TABLE}."premium_type" ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}."segment" ;;
  }

  dimension_group: segment {
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
    sql: ${TABLE}."segment_date" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}."year" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
