view: hris_comparing {
  sql_table_name: "WORKSPACE_233686783"."hris_comparing"
    ;;

  dimension: attendance_system_inbound_hours {
    type: number
    sql: ${TABLE}."attendance_system_inbound_hours" ;;
  }

  dimension: attendance_system_others_hours {
    type: number
    sql: ${TABLE}."attendance_system_others_hours" ;;
  }

  dimension: attendance_system_outbound_hours {
    type: number
    sql: ${TABLE}."attendance_system_outbound_hours" ;;
  }

  dimension: attendance_system_total_fc_hours {
    type: number
    sql: ${TABLE}."attendance_system_total_FC_hours" ;;
  }

  dimension: attendance_system_total_hours {
    type: number
    sql: ${TABLE}."attendance_system_total_hours" ;;
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
    sql: ${TABLE}."Department" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: login_time_in_hours {
    type: number
    sql: ${TABLE}."login_time_in_hours" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
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
    drill_fields: [warehouse_name]
  }
}
