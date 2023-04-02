view: user_characteristics {
  sql_table_name: "WORKSPACE_233686783"."user_characteristics"
    ;;

  dimension: arpu_level {
    type: string
    sql: ${TABLE}."arpu_level" ;;
  }

  dimension: cluster_id {
    type: string
    sql: ${TABLE}."cluster_id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}."create_date" ;;
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

  dimension: has_mobile_app {
    type: string
    sql: ${TABLE}."has_mobile_app" ;;
  }

  dimension: has_premium {
    type: string
    sql: ${TABLE}."has_premium" ;;
  }

  dimension: mailing_enabled {
    type: string
    sql: ${TABLE}."mailing_enabled" ;;
  }

  dimension: main_funnel {
    type: string
    sql: ${TABLE}."main_funnel" ;;
  }

  dimension: master_user_unique_id {
    type: string
    sql: ${TABLE}."master_user_unique_id" ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}."orders_count" ;;
  }

  dimension: parents_club {
    type: string
    sql: ${TABLE}."parents_club" ;;
  }

  dimension: sms_enabled {
    type: string
    sql: ${TABLE}."sms_enabled" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension_group: when_sms_unsubscribe {
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
    sql: ${TABLE}."when_sms_unsubscribe" ;;
  }

  dimension_group: when_unsubscribe {
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
    sql: ${TABLE}."when_unsubscribe" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
