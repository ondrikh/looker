view: market_orders {
  sql_table_name: "WORKSPACE_233686783"."market_orders"
    ;;

  dimension: competitor {
    type: string
    sql: ${TABLE}."competitor" ;;
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

  dimension: orders_per_day {
    type: number
    sql: ${TABLE}."orders_per_day" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
