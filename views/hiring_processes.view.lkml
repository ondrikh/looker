view: hiring_processes {
  sql_table_name: "WORKSPACE_233686783"."hiring_processes"
    ;;

  dimension: branch_name {
    type: string
    sql: ${TABLE}."branch_name" ;;
  }

  dimension_group: first_interview {
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
    sql: ${TABLE}."first_interview_date" ;;
  }

  dimension_group: first_longlist {
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
    sql: ${TABLE}."first_longlist_date" ;;
  }

  dimension: hire_result {
    type: string
    sql: ${TABLE}."hire_result" ;;
  }

  dimension: interview_id {
    type: string
    sql: ${TABLE}."interview_id" ;;
  }

  dimension: interview_source_name {
    type: string
    sql: ${TABLE}."interview_source_name" ;;
  }

  dimension_group: last_interview {
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
    sql: ${TABLE}."last_interview_date" ;;
  }

  dimension_group: last_status {
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
    sql: ${TABLE}."last_status_date" ;;
  }

  dimension: last_status_user {
    type: string
    sql: ${TABLE}."last_status_user" ;;
  }

  dimension_group: second_interview {
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
    sql: ${TABLE}."second_interview_date" ;;
  }

  dimension_group: third_interview {
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
    sql: ${TABLE}."third_interview_date" ;;
  }

  measure: count {
    type: count
    drill_fields: [branch_name, interview_source_name]
  }
}
