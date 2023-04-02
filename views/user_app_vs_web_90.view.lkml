view: user_app_vs_web_90 {
  sql_table_name: "WORKSPACE_233686783"."user_app_vs_web_90"
    ;;

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

  dimension: order_months_after {
    type: number
    sql: ${TABLE}."order_months_after" ;;
  }

  dimension: order_months_before {
    type: number
    sql: ${TABLE}."order_months_before" ;;
  }

  dimension: orders_after {
    type: number
    sql: ${TABLE}."orders_after" ;;
  }

  dimension: orders_before {
    type: number
    sql: ${TABLE}."orders_before" ;;
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}."user_type" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
