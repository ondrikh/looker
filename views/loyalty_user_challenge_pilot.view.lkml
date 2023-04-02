view: loyalty_user_challenge_pilot {
  sql_table_name: "WORKSPACE_233686783"."loyalty_user_challenge_pilot"
    ;;

  dimension_group: bsm_first_view {
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
    sql: ${TABLE}."bsm_first_view_at" ;;
  }

  dimension_group: challenge_completed {
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
    sql: ${TABLE}."challenge_completed_at" ;;
  }

  dimension_group: challenge_completed_at_2 {
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
    sql: ${TABLE}."challenge_completed_at_2" ;;
  }

  dimension: challenge_master_order_unique_id {
    type: string
    sql: ${TABLE}."challenge_master_order_unique_id" ;;
  }

  dimension: challenge_order_finished {
    type: string
    sql: ${TABLE}."challenge_order_finished" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: loyalty_reward_unique_id {
    type: string
    sql: ${TABLE}."loyalty_reward_unique_id" ;;
  }

  dimension_group: reward_since {
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
    sql: ${TABLE}."reward_since" ;;
  }

  dimension_group: reward_till {
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
    sql: ${TABLE}."reward_till" ;;
  }

  dimension_group: reward_used {
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
    sql: ${TABLE}."reward_used_at" ;;
  }

  dimension: shopped_alcohol_before {
    type: string
    sql: ${TABLE}."shopped_alcohol_before" ;;
  }

  dimension_group: shopped_from_category {
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
    sql: ${TABLE}."shopped_from_category_at" ;;
  }

  dimension_group: shopped_from_category_at_2 {
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
    sql: ${TABLE}."shopped_from_category_at_2" ;;
  }

  dimension: shopped_from_category_finished {
    type: string
    sql: ${TABLE}."shopped_from_category_finished" ;;
  }

  dimension: shopped_from_category_master_order_unique_id {
    type: string
    sql: ${TABLE}."shopped_from_category_master_order_unique_id" ;;
  }

  dimension: trigger_master_order_unique_id {
    type: string
    sql: ${TABLE}."trigger_master_order_unique_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension_group: web_first_view {
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
    sql: ${TABLE}."web_first_view_at" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
