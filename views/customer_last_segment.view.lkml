view: customer_last_segment {
  sql_table_name: "WORKSPACE_233686783"."customer_last_segment"
    ;;

  dimension: ab_test {
    type: string
    sql: ${TABLE}."ab_test" ;;
  }

  dimension: aov {
    type: number
    sql: ${TABLE}."aov" ;;
  }

  dimension: aov90 {
    type: number
    sql: ${TABLE}."aov90" ;;
  }

  dimension: arpu_level {
    type: string
    sql: ${TABLE}."arpu_level" ;;
  }

  dimension: benu {
    type: number
    sql: ${TABLE}."benu" ;;
  }

  dimension: changed_segment {
    type: string
    sql: ${TABLE}."changed_segment" ;;
  }

  dimension: churn_v2 {
    type: string
    sql: ${TABLE}."churn_v2" ;;
  }

  dimension: clv_probability_alive {
    type: string
    sql: ${TABLE}."clv_probability_alive" ;;
  }

  dimension: clv_revenue {
    type: string
    sql: ${TABLE}."clv_revenue" ;;
  }

  dimension: conversion_rate_to_euro_fin {
    type: string
    sql: ${TABLE}."conversion_rate_to_euro_fin" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: credits {
    type: number
    sql: ${TABLE}."credits" ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}."date" ;;
  }

  dimension: datediff_month_vs_now {
    type: number
    sql: ${TABLE}."datediff_month_vs_now" ;;
  }

  dimension: days_till_churned {
    type: number
    sql: ${TABLE}."days_till_churned" ;;
  }

  dimension: days_till_second_order {
    type: number
    sql: ${TABLE}."days_till_secondOrder" ;;
  }

  dimension: dsfo {
    type: number
    sql: ${TABLE}."dsfo" ;;
  }

  dimension: dslo {
    type: number
    sql: ${TABLE}."dslo" ;;
  }

  dimension: finished_onboarding {
    type: string
    sql: ${TABLE}."finished_onboarding" ;;
  }

  dimension: first_ok {
    type: string
    sql: ${TABLE}."first_ok" ;;
  }

  dimension_group: fo {
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
    sql: ${TABLE}."fo_date" ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}."frequency" ;;
  }

  dimension: frequency_band {
    type: number
    sql: ${TABLE}."frequency_band" ;;
  }

  dimension: frequency_level {
    type: string
    sql: ${TABLE}."frequency_level" ;;
  }

  dimension: gr {
    type: number
    sql: ${TABLE}."gr" ;;
  }

  dimension: gr90 {
    type: number
    sql: ${TABLE}."gr90" ;;
  }

  dimension: gr_60days {
    type: number
    sql: ${TABLE}."gr_60days" ;;
  }

  dimension: gr_90days {
    type: number
    sql: ${TABLE}."gr_90days" ;;
  }

  dimension: key_id {
    type: string
    sql: ${TABLE}."key_id" ;;
  }

  dimension: last_month {
    type: number
    sql: ${TABLE}."last_month" ;;
  }

  dimension_group: last_reactivation_start {
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
    sql: ${TABLE}."last_reactivation_start" ;;
  }

  dimension: main_funnel {
    type: string
    sql: ${TABLE}."main_funnel" ;;
  }

  dimension: main_funnel_stretch {
    type: string
    sql: ${TABLE}."main_funnel_stretch" ;;
  }

  dimension_group: max_credits {
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
    sql: ${TABLE}."max_credits_date" ;;
  }

  dimension: max_frequency {
    type: number
    sql: ${TABLE}."max_frequency" ;;
  }

  dimension: nr {
    type: number
    sql: ${TABLE}."nr" ;;
  }

  dimension: nr90 {
    type: number
    sql: ${TABLE}."nr90" ;;
  }

  dimension: nr_60days {
    type: number
    sql: ${TABLE}."nr_60days" ;;
  }

  dimension: nr_90days {
    type: number
    sql: ${TABLE}."nr_90days" ;;
  }

  dimension: onboarding_darky {
    type: string
    sql: ${TABLE}."onboarding_darky" ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}."orders" ;;
  }

  dimension: orders_60days {
    type: number
    sql: ${TABLE}."orders_60days" ;;
  }

  dimension: orders_90days {
    type: number
    sql: ${TABLE}."orders_90days" ;;
  }

  dimension: orders_segmentation {
    type: string
    sql: ${TABLE}."orders_segmentation" ;;
  }

  dimension: price_sensitivity {
    type: string
    sql: ${TABLE}."price_sensitivity" ;;
  }

  dimension: promo_share {
    type: number
    sql: ${TABLE}."promo_share" ;;
  }

  dimension: reactivation_flag {
    type: string
    sql: ${TABLE}."reactivation_flag" ;;
  }

  dimension: rohlik_point {
    type: number
    sql: ${TABLE}."rohlik_point" ;;
  }

  dimension: score_mobile_device {
    type: string
    sql: ${TABLE}."score_mobile_device" ;;
  }

  dimension: score_price_tiers {
    type: string
    sql: ${TABLE}."score_price_tiers" ;;
  }

  dimension: score_promo_share {
    type: string
    sql: ${TABLE}."score_promo_share" ;;
  }

  dimension: specialni_slevy {
    type: string
    sql: ${TABLE}."specialni_slevy" ;;
  }

  dimension: total_gr {
    type: number
    sql: ${TABLE}."total_gr" ;;
  }

  dimension: total_orders {
    type: number
    sql: ${TABLE}."total_orders" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: unread_emails_count {
    type: number
    sql: ${TABLE}."unread_emails_count" ;;
  }

  dimension: yesterday {
    type: number
    sql: ${TABLE}."yesterday" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
