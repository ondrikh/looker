view: warehouse_registration {
  sql_table_name: "WORKSPACE_233686783"."warehouse_registration"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: entry_time {
    type: string
    sql: ${TABLE}."entry_time" ;;
  }

  dimension: entry_unique_id {
    type: string
    sql: ${TABLE}."entry_unique_id" ;;
  }

  dimension_group: login {
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
    drill_fields: []
  }
}
