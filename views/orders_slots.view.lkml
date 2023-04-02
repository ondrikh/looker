view: orders_slots {
  sql_table_name: "WORKSPACE_233686783"."orders_slots"
    ;;

  dimension: available_eco {
    type: string
    sql: ${TABLE}."available_eco" ;;
  }

  dimension: available_express {
    type: string
    sql: ${TABLE}."available_express" ;;
  }

  dimension_group: available_first {
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
    sql: ${TABLE}."available_first" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: deliver {
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
    sql: ${TABLE}."deliver_at" ;;
  }

  dimension: finished_order {
    type: string
    sql: ${TABLE}."finished_order" ;;
  }

  dimension: master_order_unique_id {
    type: string
    sql: ${TABLE}."master_order_unique_id" ;;
  }

  dimension: order_by_premium_user {
    type: string
    sql: ${TABLE}."order_by_premium_user" ;;
  }

  dimension: order_by_premium_user_paid {
    type: string
    sql: ${TABLE}."order_by_premium_user_paid" ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}."origin" ;;
  }

  dimension: selected_cheapest {
    type: string
    sql: ${TABLE}."selected_cheapest" ;;
  }

  dimension: selected_eco {
    type: string
    sql: ${TABLE}."selected_eco" ;;
  }

  dimension: selected_express {
    type: string
    sql: ${TABLE}."selected_express" ;;
  }

  dimension: selected_first {
    type: string
    sql: ${TABLE}."selected_first" ;;
  }

  dimension: selected_first_cheapest {
    type: string
    sql: ${TABLE}."selected_first_cheapest" ;;
  }

  dimension: selected_free {
    type: string
    sql: ${TABLE}."selected_free" ;;
  }

  dimension: selected_preselected {
    type: string
    sql: ${TABLE}."selected_preselected" ;;
  }

  dimension: selected_recommended {
    type: string
    sql: ${TABLE}."selected_recommended" ;;
  }

  dimension_group: time {
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
    sql: ${TABLE}."time" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
