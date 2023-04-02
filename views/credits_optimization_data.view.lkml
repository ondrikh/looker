view: credits_optimization_data {
  sql_table_name: "WORKSPACE_233686783"."credits_optimization_data"
    ;;

  dimension: ds_backend_size {
    type: string
    sql: ${TABLE}."ds_backend_size" ;;
  }

  dimension: dwh_large_ratio {
    type: number
    sql: ${TABLE}."dwh_large_ratio" ;;
  }

  dimension: dwh_medium_ratio {
    type: number
    sql: ${TABLE}."dwh_medium_ratio" ;;
  }

  dimension: dwh_small_ratio {
    type: number
    sql: ${TABLE}."dwh_small_ratio" ;;
  }

  dimension: job_billed_credits_used {
    type: number
    sql: ${TABLE}."job_billed_credits_used" ;;
  }

  dimension_group: job_start {
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
    sql: ${TABLE}."job_start_at" ;;
  }

  dimension: job_total_time_sec {
    type: number
    sql: ${TABLE}."job_total_time_sec" ;;
  }

  dimension: kbc_component_configuration {
    type: string
    sql: ${TABLE}."kbc_component_configuration" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
