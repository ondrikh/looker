view: app_first_open_and_auth {
  sql_table_name: "WORKSPACE_233686783"."app_first_open_and_auth"
    ;;

  dimension_group: app_first_open {
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
    sql: ${TABLE}."app_first_open_at" ;;
  }

  dimension: auth_method {
    type: string
    sql: ${TABLE}."auth_method" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: first_master_order_unique_id {
    type: string
    sql: ${TABLE}."first_master_order_unique_id" ;;
  }

  dimension: first_open_app_version {
    type: string
    sql: ${TABLE}."first_open_app_version" ;;
  }

  dimension: first_open_device {
    type: string
    sql: ${TABLE}."first_open_device" ;;
  }

  dimension: first_open_platform {
    type: string
    sql: ${TABLE}."first_open_platform" ;;
  }

  dimension: first_order_items_app {
    type: string
    sql: ${TABLE}."first_order_items_app" ;;
  }

  dimension: first_order_items_web {
    type: string
    sql: ${TABLE}."first_order_items_web" ;;
  }

  dimension: first_order_origin {
    type: string
    sql: ${TABLE}."first_order_origin" ;;
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

  dimension_group: first_session {
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
    sql: ${TABLE}."first_session_at" ;;
  }

  dimension: first_session_id {
    type: string
    sql: ${TABLE}."first_session_id" ;;
  }

  dimension: first_session_unique_id {
    type: string
    sql: ${TABLE}."first_session_unique_id" ;;
  }

  dimension: is_already_registered {
    type: string
    sql: ${TABLE}."is_already_registered" ;;
  }

  dimension: is_first_time_user {
    type: string
    sql: ${TABLE}."is_first_time_user" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}."user_pseudo_id" ;;
  }

  dimension: user_pseudo_unique_id {
    type: string
    sql: ${TABLE}."user_pseudo_unique_id" ;;
  }

  dimension_group: user_registered {
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
    sql: ${TABLE}."user_registered_at" ;;
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
