view: stats_detail {
  sql_table_name: "WORKSPACE_233686783"."stats_detail"
    ;;

  dimension: ds_backend_size {
    type: string
    sql: ${TABLE}."ds_backend_size" ;;
  }

  dimension: job_billed_credits_used {
    type: string
    sql: ${TABLE}."job_billed_credits_used" ;;
  }

  dimension_group: job {
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
    sql: ${TABLE}."job_date" ;;
  }

  dimension: job_network_mb {
    type: number
    sql: ${TABLE}."job_network_mb" ;;
  }

  dimension: job_run_time_sec {
    type: number
    sql: ${TABLE}."job_run_time_sec" ;;
  }

  dimension: job_run_type {
    type: string
    sql: ${TABLE}."job_run_type" ;;
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

  dimension: job_status {
    type: string
    sql: ${TABLE}."job_status" ;;
  }

  dimension: job_time_credits_used {
    type: number
    sql: ${TABLE}."job_time_credits_used" ;;
  }

  dimension: job_volume_credits_used {
    type: number
    sql: ${TABLE}."job_volume_credits_used" ;;
  }

  dimension: kbc_component {
    type: string
    sql: ${TABLE}."kbc_component" ;;
  }

  dimension: kbc_component_configuration {
    type: string
    sql: ${TABLE}."kbc_component_configuration" ;;
  }

  dimension: kbc_component_id {
    type: string
    sql: ${TABLE}."kbc_component_id" ;;
  }

  dimension: kbc_component_type {
    type: string
    sql: ${TABLE}."kbc_component_type" ;;
  }

  dimension: kbc_configuration_job_id {
    type: string
    sql: ${TABLE}."kbc_configuration_job_id" ;;
  }

  dimension: kbc_organization_id {
    type: string
    sql: ${TABLE}."kbc_organization_id" ;;
  }

  dimension: kbc_project {
    type: string
    sql: ${TABLE}."kbc_project" ;;
  }

  dimension: kbc_project_id {
    type: string
    sql: ${TABLE}."kbc_project_id" ;;
  }

  dimension: token_name {
    type: string
    sql: ${TABLE}."token_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [token_name]
  }
}
