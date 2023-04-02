view: customer_segment_extended_weekly {
  sql_table_name: "WORKSPACE_233686783"."customer_segment_extended_weekly"
    ;;

  dimension: aov {
    type: string
    sql: ${TABLE}."aov" ;;
  }

  dimension: arpu_level {
    type: string
    sql: ${TABLE}."arpu_level" ;;
  }

  dimension: avg_price_tier {
    type: string
    sql: ${TABLE}."avg_price_tier" ;;
  }

  dimension: baby_buyer {
    type: string
    sql: ${TABLE}."baby_buyer" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: cluster_segment {
    type: string
    sql: ${TABLE}."cluster_segment" ;;
  }

  dimension: control_group {
    type: string
    sql: ${TABLE}."control_group" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: crm_given_credits_1m {
    type: string
    sql: ${TABLE}."crm_given_credits_1m" ;;
  }

  dimension: crm_used_credits_1m {
    type: string
    sql: ${TABLE}."crm_used_credits_1m" ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}."date" ;;
  }

  dimension: delivery_zone {
    type: string
    sql: ${TABLE}."delivery_zone" ;;
  }

  dimension: dsfo {
    type: string
    sql: ${TABLE}."dsfo" ;;
  }

  dimension: dslo {
    type: string
    sql: ${TABLE}."dslo" ;;
  }

  dimension: fo_date {
    type: string
    sql: ${TABLE}."fo_date" ;;
  }

  dimension: is_parents_club {
    type: string
    sql: ${TABLE}."is_parents_club" ;;
  }

  dimension: is_premium {
    type: string
    sql: ${TABLE}."is_premium" ;;
  }

  dimension: mailing_enabled {
    type: string
    sql: ${TABLE}."mailing_enabled" ;;
  }

  dimension: main_funnel {
    type: string
    sql: ${TABLE}."main_funnel" ;;
  }

  dimension: nb_next_order_probability {
    type: string
    sql: ${TABLE}."nb_next_order_probability" ;;
  }

  dimension: next_shopping_date {
    type: string
    sql: ${TABLE}."next_shopping_date" ;;
  }

  dimension: opt_out_flag {
    type: string
    sql: ${TABLE}."opt_out_flag" ;;
  }

  dimension: orders {
    type: string
    sql: ${TABLE}."orders" ;;
  }

  dimension: premium_type {
    type: string
    sql: ${TABLE}."premium_type" ;;
  }

  dimension: price_sensitivity {
    type: string
    sql: ${TABLE}."price_sensitivity" ;;
  }

  dimension: reactivated_30d_date {
    type: string
    sql: ${TABLE}."reactivated_30d_date" ;;
  }

  dimension: reactivated_30d_flag {
    type: number
    sql: ${TABLE}."reactivated_30d_flag" ;;
  }

  dimension: reactivated_30d_week {
    type: string
    sql: ${TABLE}."reactivated_30d_week" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."region" ;;
  }

  dimension: shopping_cycle {
    type: string
    sql: ${TABLE}."shopping_cycle" ;;
  }

  dimension: sms_exclude {
    type: string
    sql: ${TABLE}."sms_exclude" ;;
  }

  dimension: total_orders {
    type: string
    sql: ${TABLE}."total_orders" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: week_join {
    type: string
    sql: ${TABLE}."week_join" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
