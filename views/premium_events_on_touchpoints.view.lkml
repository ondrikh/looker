view: premium_events_on_touchpoints {
  sql_table_name: "WORKSPACE_233686783"."premium_events_on_touchpoints"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: event_category {
    type: string
    sql: ${TABLE}."event_category" ;;
  }

  dimension: event_label {
    type: string
    sql: ${TABLE}."event_label" ;;
  }

  dimension_group: event {
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
    sql: ${TABLE}."event_time" ;;
  }

  dimension: event_value {
    type: string
    sql: ${TABLE}."event_value" ;;
  }

  dimension: had_premium_before {
    type: string
    sql: ${TABLE}."had_premium_before" ;;
  }

  dimension: is_authenticated {
    type: string
    sql: ${TABLE}."is_authenticated" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: premium_first_time_purchase {
    type: string
    sql: ${TABLE}."premium_first_time_purchase" ;;
  }

  dimension: premium_type {
    type: string
    sql: ${TABLE}."premium_type" ;;
  }

  dimension: touchpoint {
    type: string
    sql: ${TABLE}."touchpoint" ;;
  }

  dimension: touchpoint_detail {
    type: string
    sql: ${TABLE}."touchpoint_detail" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [user.id]
  }
}
