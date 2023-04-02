view: sailthrou_self_service_adhoc_flow {
  sql_table_name: "WORKSPACE_233686783"."sailthrou_self_service_adhoc_flow"
    ;;

  dimension: aov {
    type: string
    sql: ${TABLE}."aov" ;;
  }

  dimension: aov90 {
    type: string
    sql: ${TABLE}."aov90" ;;
  }

  dimension: arpu_level {
    type: string
    sql: ${TABLE}."arpu_level" ;;
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

  dimension: date_added {
    type: string
    sql: ${TABLE}."date_added" ;;
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

  dimension: dslo_1d {
    type: string
    sql: ${TABLE}."dslo_1d" ;;
  }

  dimension: fo_date {
    type: string
    sql: ${TABLE}."fo_date" ;;
  }

  dimension: frequency {
    type: string
    sql: ${TABLE}."frequency" ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: is_premium {
    type: string
    sql: ${TABLE}."is_premium" ;;
  }

  dimension: list {
    type: string
    sql: ${TABLE}."list" ;;
  }

  dimension: list_name {
    type: string
    sql: ${TABLE}."list_name" ;;
  }

  dimension: main_funnel {
    type: string
    sql: ${TABLE}."main_funnel" ;;
  }

  dimension: orders {
    type: string
    sql: ${TABLE}."orders" ;;
  }

  dimension: premium_type {
    type: string
    sql: ${TABLE}."premium_type" ;;
  }

  dimension: reactivated_30d {
    type: string
    sql: ${TABLE}."reactivated_30d" ;;
  }

  dimension: reactivated_30d_date {
    type: string
    sql: ${TABLE}."reactivated_30d_date" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."region" ;;
  }

  dimension: total_orders {
    type: string
    sql: ${TABLE}."total_orders" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [list_name]
  }
}
