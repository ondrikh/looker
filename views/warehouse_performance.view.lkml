view: warehouse_performance {
  sql_table_name: "WORKSPACE_233686783"."warehouse_performance"
    ;;

  dimension: activity {
    type: string
    sql: ${TABLE}."activity" ;;
  }

  dimension: activity_en {
    type: string
    sql: ${TABLE}."activity_en" ;;
  }

  dimension: agency {
    type: string
    sql: ${TABLE}."agency" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
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

  dimension: department {
    type: string
    sql: ${TABLE}."department" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: login_time_in_sec {
    type: number
    sql: ${TABLE}."login_time_in_sec" ;;
  }

  dimension: performance {
    type: number
    sql: ${TABLE}."performance" ;;
  }

  dimension: performance_category {
    type: string
    sql: ${TABLE}."performance_category" ;;
  }

  dimension: process {
    type: string
    sql: ${TABLE}."process" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [warehouse_name, user.id]
  }
}
