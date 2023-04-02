view: customer_reactivation_in_months {
  sql_table_name: "WORKSPACE_233686783"."customer_reactivation_in_months"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: dslo {
    type: number
    sql: ${TABLE}."dslo" ;;
  }

  dimension_group: dslo {
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
    sql: ${TABLE}."dslo_date" ;;
  }

  dimension: master_user_unique_id {
    type: string
    sql: ${TABLE}."master_user_unique_id" ;;
  }

  dimension_group: month {
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
    sql: ${TABLE}."month" ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}."orders" ;;
  }

  dimension: orders_in_current_month {
    type: number
    sql: ${TABLE}."orders_in_current_month" ;;
  }

  dimension: orders_in_previous_month {
    type: number
    sql: ${TABLE}."orders_in_previous_month" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
