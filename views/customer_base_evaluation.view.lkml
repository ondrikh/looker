view: customer_base_evaluation {
  sql_table_name: "WORKSPACE_233686783"."customer_base_evaluation"
    ;;

  dimension: aov {
    type: number
    sql: ${TABLE}."aov" ;;
  }

  dimension: aov_user_5plus_orders {
    type: number
    sql: ${TABLE}."aov_user_5plus_orders" ;;
  }

  dimension: app_visitors {
    type: number
    sql: ${TABLE}."app_visitors" ;;
  }

  dimension: arpu {
    type: number
    sql: ${TABLE}."arpu" ;;
  }

  dimension: baby_buyer_ftu {
    type: number
    sql: ${TABLE}."baby_buyer_ftu" ;;
  }

  dimension: baby_buyer_wau {
    type: number
    sql: ${TABLE}."baby_buyer_wau" ;;
  }

  dimension: buyers_30plus_l3_categories {
    type: number
    sql: ${TABLE}."buyers_30plus_l3_categories" ;;
  }

  dimension: buyers_l30d {
    type: number
    sql: ${TABLE}."buyers_l30d" ;;
  }

  dimension: buyers_l7d {
    type: number
    sql: ${TABLE}."buyers_l7d" ;;
  }

  dimension: buyers_l7d_app {
    type: number
    sql: ${TABLE}."buyers_l7d_app" ;;
  }

  dimension: buyers_l7d_low {
    type: number
    sql: ${TABLE}."buyers_l7d_low" ;;
  }

  dimension: buyers_l7d_normal {
    type: number
    sql: ${TABLE}."buyers_l7d_normal" ;;
  }

  dimension: buyers_l7d_star {
    type: number
    sql: ${TABLE}."buyers_l7d_star" ;;
  }

  dimension: churn_rate {
    type: number
    sql: ${TABLE}."churn_rate" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: csat_all {
    type: number
    sql: ${TABLE}."csat_all" ;;
  }

  dimension: csat_ftu {
    type: number
    sql: ${TABLE}."csat_ftu" ;;
  }

  dimension: customers_in_low {
    type: number
    sql: ${TABLE}."customers_in_low" ;;
  }

  dimension: customers_in_normal {
    type: number
    sql: ${TABLE}."customers_in_normal" ;;
  }

  dimension: customers_in_star {
    type: number
    sql: ${TABLE}."customers_in_star" ;;
  }

  dimension: customers_not_getting_2_emails {
    type: number
    sql: ${TABLE}."customers_not_getting_2_emails" ;;
  }

  dimension: customers_not_onboarded {
    type: number
    sql: ${TABLE}."customers_not_onboarded" ;;
  }

  dimension: customers_with_1_order_only {
    type: number
    sql: ${TABLE}."customers_with_1_order_only" ;;
  }

  dimension: customers_with_2_orders_only {
    type: number
    sql: ${TABLE}."customers_with_2_orders_only" ;;
  }

  dimension: customers_with_2nd_order {
    type: number
    sql: ${TABLE}."customers_with_2nd_order" ;;
  }

  dimension: customers_with_4th_order {
    type: number
    sql: ${TABLE}."customers_with_4th_order" ;;
  }

  dimension: customers_with_5th_order {
    type: number
    sql: ${TABLE}."customers_with_5th_order" ;;
  }

  dimension: customers_without_4th_order {
    type: number
    sql: ${TABLE}."customers_without_4th_order" ;;
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

  dimension: frequency_30 {
    type: number
    sql: ${TABLE}."frequency_30" ;;
  }

  dimension: frequency_90 {
    type: number
    sql: ${TABLE}."frequency_90" ;;
  }

  dimension: ftu_cohort_14dsfo {
    type: number
    sql: ${TABLE}."ftu_cohort_14dsfo" ;;
  }

  dimension: ftu_cohort_180dsfo {
    type: number
    sql: ${TABLE}."ftu_cohort_180dsfo" ;;
  }

  dimension: ftu_cohort_365dsfo {
    type: number
    sql: ${TABLE}."ftu_cohort_365dsfo" ;;
  }

  dimension: ftu_cohort_60dsfo {
    type: number
    sql: ${TABLE}."ftu_cohort_60dsfo" ;;
  }

  dimension: new_buyers_l30_d {
    type: number
    sql: ${TABLE}."new_buyers_l30_d" ;;
  }

  dimension: new_buyers_l7d {
    type: number
    sql: ${TABLE}."new_buyers_l7d" ;;
  }

  dimension: orders_l7d {
    type: number
    sql: ${TABLE}."orders_l7d" ;;
  }

  dimension: orders_l7d_app {
    type: number
    sql: ${TABLE}."orders_l7d_app" ;;
  }

  dimension: total_customer_base {
    type: number
    sql: ${TABLE}."total_customer_base" ;;
  }

  dimension: web_visitors {
    type: number
    sql: ${TABLE}."web_visitors" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
