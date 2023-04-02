view: all_used_credits {
  sql_table_name: "WORKSPACE_233686783"."all_used_credits"
    ;;

  dimension: credit_used {
    type: number
    sql: ${TABLE}."credit_used" ;;
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

  dimension: kbc_project {
    type: string
    sql: ${TABLE}."kbc_project" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
