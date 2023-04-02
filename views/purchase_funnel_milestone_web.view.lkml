view: purchase_funnel_milestone_web {
  sql_table_name: "WORKSPACE_233686783"."purchase_funnel_milestone_web"
    ;;

  dimension: add_to_cart_duration_seconds {
    type: number
    sql: ${TABLE}."add_to_cart_duration_seconds" ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}."app_version" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."category" ;;
  }

  dimension: checkout_finished {
    type: number
    sql: ${TABLE}."checkout_finished" ;;
  }

  dimension: count_of_records {
    type: number
    sql: ${TABLE}."count_of_records" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: device_category {
    type: string
    sql: ${TABLE}."device_category" ;;
  }

  dimension: event_timestamp {
    type: number
    sql: ${TABLE}."event_timestamp" ;;
  }

  dimension: feature_name {
    type: string
    sql: ${TABLE}."feature_name" ;;
  }

  dimension: feature_user_group {
    type: string
    sql: ${TABLE}."feature_user_group" ;;
  }

  dimension: ga_session_unique_id {
    type: string
    sql: ${TABLE}."ga_session_unique_id" ;;
  }

  dimension_group: milestone_datetime_from {
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
    sql: ${TABLE}."milestone_datetime_from" ;;
  }

  dimension_group: milestone_datetime_to {
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
    sql: ${TABLE}."milestone_datetime_to" ;;
  }

  dimension: milestone_duration_seconds {
    type: number
    sql: ${TABLE}."milestone_duration_seconds" ;;
  }

  dimension: milestone_rn {
    type: number
    sql: ${TABLE}."milestone_rn" ;;
  }

  dimension: milestone_type {
    type: string
    sql: ${TABLE}."milestone_type" ;;
  }

  dimension: operating_system {
    type: string
    sql: ${TABLE}."operating_system" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: sku_count_added {
    type: number
    sql: ${TABLE}."SKU_count_added" ;;
  }

  dimension: sku_count_removed {
    type: number
    sql: ${TABLE}."SKU_count_removed" ;;
  }

  dimension: source_touchpoint {
    type: string
    sql: ${TABLE}."source_touchpoint" ;;
  }

  dimension: traffic_medium {
    type: string
    sql: ${TABLE}."traffic_medium" ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}."traffic_source" ;;
  }

  dimension: user_pseudo_unique_id {
    type: string
    sql: ${TABLE}."user_pseudo_unique_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [feature_name]
  }
}
