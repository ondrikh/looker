view: country_mau_summary {
  sql_table_name: "WORKSPACE_233686783"."country_mau_summary"
    ;;

  dimension: churn_rate {
    type: number
    sql: ${TABLE}."churn_rate" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: ftu {
    type: number
    sql: ${TABLE}."ftu" ;;
  }

  dimension: ftu_retention_rate_t_1 {
    type: number
    sql: ${TABLE}."ftu_retention_rate_t_1" ;;
  }

  dimension: ftu_retention_rate_t_2 {
    type: number
    sql: ${TABLE}."ftu_retention_rate_t_2" ;;
  }

  dimension: gr {
    type: number
    sql: ${TABLE}."gr" ;;
  }

  dimension: inactive_ftu_1 {
    type: number
    sql: ${TABLE}."inactive_ftu_1" ;;
  }

  dimension: inactive_ftu_2 {
    type: number
    sql: ${TABLE}."inactive_ftu_2" ;;
  }

  dimension: inactive_users_total {
    type: number
    sql: ${TABLE}."inactive_users_total" ;;
  }

  dimension: mau {
    type: number
    sql: ${TABLE}."mau" ;;
  }

  dimension_group: month_of_order {
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
    sql: ${TABLE}."month_of_order" ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}."orders" ;;
  }

  dimension: reactivated_ftu_2 {
    type: number
    sql: ${TABLE}."reactivated_ftu_2" ;;
  }

  dimension: reactivated_users {
    type: number
    sql: ${TABLE}."reactivated_users" ;;
  }

  dimension: reactivation_rate {
    type: number
    sql: ${TABLE}."reactivation_rate" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
