view: customer_churn_segment_in_months {
  sql_table_name: "WORKSPACE_233686783"."customer_churn_segment_in_months"
    ;;

  dimension: active_customer {
    type: string
    sql: ${TABLE}."active_customer" ;;
  }

  dimension: churn_customer {
    type: string
    sql: ${TABLE}."churn_customer" ;;
  }

  dimension_group: churn {
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
    sql: ${TABLE}."churn_date" ;;
  }

  dimension: churn_gr_eur_l90d {
    type: number
    sql: ${TABLE}."churn_gr_eur_l90d" ;;
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

  dimension_group: first_order {
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
    sql: ${TABLE}."first_order_time" ;;
  }

  dimension: gr_eur_l90d {
    type: number
    sql: ${TABLE}."gr_eur_l90d" ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}."month" ;;
  }

  dimension: reactivated_customer {
    type: string
    sql: ${TABLE}."reactivated_customer" ;;
  }

  dimension_group: reactivation {
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
    sql: ${TABLE}."reactivation_date" ;;
  }

  dimension: total_orders {
    type: number
    sql: ${TABLE}."total_orders" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
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
