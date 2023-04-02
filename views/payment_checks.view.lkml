view: payment_checks {
  sql_table_name: "WORKSPACE_233686783"."payment_checks"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: order_settled_from {
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
    sql: ${TABLE}."order_settled_from" ;;
  }

  dimension_group: order_settled_to {
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
    sql: ${TABLE}."order_settled_to" ;;
  }

  dimension: orders_total_checked_cnt {
    type: number
    sql: ${TABLE}."orders_total_checked_cnt" ;;
  }

  dimension: orders_with_errors_cnt {
    type: number
    sql: ${TABLE}."orders_with_errors_cnt" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
