view: active_user_web_app_demography {
  sql_table_name: "WORKSPACE_233686783"."active_user_web_app_demography"
    ;;

  dimension: age {
    type: string
    sql: ${TABLE}."age" ;;
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
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."date" ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}."gender" ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}."month" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}."users" ;;
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
