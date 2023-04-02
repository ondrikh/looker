view: loyalty_pilot_funnel_in_weeks {
  sql_table_name: "WORKSPACE_233686783"."loyalty_pilot_funnel_in_weeks"
    ;;

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: loyalty_reward_unique_id {
    type: string
    sql: ${TABLE}."loyalty_reward_unique_id" ;;
  }

  dimension: main_funnel_w1 {
    type: string
    sql: ${TABLE}."main_funnel_w1" ;;
  }

  dimension: main_funnel_w12 {
    type: string
    sql: ${TABLE}."main_funnel_w12" ;;
  }

  dimension: main_funnel_w3 {
    type: string
    sql: ${TABLE}."main_funnel_w3" ;;
  }

  dimension: main_funnel_w6 {
    type: string
    sql: ${TABLE}."main_funnel_w6" ;;
  }

  dimension: main_funnel_w9 {
    type: string
    sql: ${TABLE}."main_funnel_w9" ;;
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

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
