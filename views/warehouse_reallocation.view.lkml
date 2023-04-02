view: warehouse_reallocation {
  sql_table_name: "WORKSPACE_233686783"."warehouse_reallocation"
    ;;

  dimension: activity_name {
    type: string
    sql: ${TABLE}."activity_name" ;;
  }

  dimension: activity_unique_id {
    type: string
    sql: ${TABLE}."activity_unique_id" ;;
  }

  dimension: application_name {
    type: string
    sql: ${TABLE}."application_name" ;;
  }

  dimension: area_identifier {
    type: string
    sql: ${TABLE}."area_identifier" ;;
  }

  dimension: balanced_by_system {
    type: number
    sql: ${TABLE}."balanced_by_system" ;;
  }

  dimension: balanced_by_system_type {
    type: string
    sql: ${TABLE}."balanced_by_system_type" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: login_date {
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
    sql: ${TABLE}."login_date" ;;
  }

  dimension: login_hour {
    type: number
    sql: ${TABLE}."login_hour" ;;
  }

  dimension: login_time {
    type: string
    sql: ${TABLE}."login_time" ;;
  }

  dimension: logout_time {
    type: string
    sql: ${TABLE}."logout_time" ;;
  }

  dimension: procees_group_name {
    type: string
    sql: ${TABLE}."procees_group_name" ;;
  }

  dimension: process_name {
    type: string
    sql: ${TABLE}."process_name" ;;
  }

  dimension: reallocation {
    type: number
    sql: ${TABLE}."reallocation" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: user_email {
    type: string
    sql: ${TABLE}."user_email" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [process_name, application_name, procees_group_name, activity_name]
  }
}
