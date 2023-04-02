view: price_sensitivity_last_week {
  sql_table_name: "WORKSPACE_233686783"."price_sensitivity_last_week"
    ;;

  dimension: arpu_level {
    type: string
    sql: ${TABLE}."arpu_level" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: days_since_last_order {
    type: string
    sql: ${TABLE}."days_since_last_order" ;;
  }

  dimension_group: first_order {
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
    sql: ${TABLE}."first_order_time" ;;
  }

  dimension: join_date_week_year {
    type: string
    sql: ${TABLE}."join_date_week_year" ;;
  }

  dimension_group: last_order {
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
    sql: ${TABLE}."last_order_time" ;;
  }

  dimension: main_funnel {
    type: string
    sql: ${TABLE}."main_funnel" ;;
  }

  dimension: orders_count {
    type: string
    sql: ${TABLE}."orders_count" ;;
  }

  dimension: price_sensitivity {
    type: string
    sql: ${TABLE}."price_sensitivity" ;;
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
