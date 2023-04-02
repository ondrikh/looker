view: user_welcome_page_conversion {
  sql_table_name: "WORKSPACE_233686783"."user_welcome_page_conversion"
    ;;

  dimension_group: add_to_cart {
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
    sql: ${TABLE}."add_to_cart_at" ;;
  }

  dimension_group: any_page_view {
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
    sql: ${TABLE}."any_page_view_at" ;;
  }

  dimension_group: begin_checkout {
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
    sql: ${TABLE}."begin_checkout_at" ;;
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

  dimension: first_order_in_session {
    type: string
    sql: ${TABLE}."first_order_in_session" ;;
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

  dimension_group: first_visit {
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
    sql: ${TABLE}."first_visit_at" ;;
  }

  dimension: ga_session_unique_id {
    type: string
    sql: ${TABLE}."ga_session_unique_id" ;;
  }

  dimension_group: home_page_view {
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
    sql: ${TABLE}."home_page_view_at" ;;
  }

  dimension: is_already_registered {
    type: string
    sql: ${TABLE}."is_already_registered" ;;
  }

  dimension: is_first_time_user {
    type: string
    sql: ${TABLE}."is_first_time_user" ;;
  }

  dimension: is_known_user {
    type: string
    sql: ${TABLE}."is_known_user" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension: pucharse_by_different_user {
    type: string
    sql: ${TABLE}."pucharse_by_different_user" ;;
  }

  dimension_group: purchase {
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
    sql: ${TABLE}."purchase_at" ;;
  }

  dimension: purchase_by_user {
    type: string
    sql: ${TABLE}."purchase_by_user" ;;
  }

  dimension_group: registered {
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
    sql: ${TABLE}."registered_at" ;;
  }

  dimension: registration {
    type: string
    sql: ${TABLE}."registration" ;;
  }

  dimension_group: session_end {
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
    sql: ${TABLE}."session_end" ;;
  }

  dimension_group: session_start {
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
    sql: ${TABLE}."session_start" ;;
  }

  dimension_group: submit_checkout {
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
    sql: ${TABLE}."submit_checkout_at" ;;
  }

  dimension: user_pseudo_unique_id {
    type: string
    sql: ${TABLE}."user_pseudo_unique_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension_group: welcome_page_view {
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
    sql: ${TABLE}."welcome_page_view_at" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
