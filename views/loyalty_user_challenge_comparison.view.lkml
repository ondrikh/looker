view: loyalty_user_challenge_comparison {
  sql_table_name: "WORKSPACE_233686783"."loyalty_user_challenge_comparison"
    ;;

  dimension: gr_12_weeks_since_reward {
    type: number
    sql: ${TABLE}."gr_12_weeks_since_reward" ;;
  }

  dimension: gr_12_weeks_till_reward {
    type: number
    sql: ${TABLE}."gr_12_weeks_till_reward" ;;
  }

  dimension: gr_16_weeks_since_reward {
    type: number
    sql: ${TABLE}."gr_16_weeks_since_reward" ;;
  }

  dimension: gr_16_weeks_till_reward {
    type: number
    sql: ${TABLE}."gr_16_weeks_till_reward" ;;
  }

  dimension: gr_4_weeks_since_reward {
    type: number
    sql: ${TABLE}."gr_4_weeks_since_reward" ;;
  }

  dimension: gr_4_weeks_till_reward {
    type: number
    sql: ${TABLE}."gr_4_weeks_till_reward" ;;
  }

  dimension: gr_8_weeks_since_reward {
    type: number
    sql: ${TABLE}."gr_8_weeks_since_reward" ;;
  }

  dimension: gr_8_weeks_till_reward {
    type: number
    sql: ${TABLE}."gr_8_weeks_till_reward" ;;
  }

  dimension: loyalty_reward_unique_id {
    type: string
    sql: ${TABLE}."loyalty_reward_unique_id" ;;
  }

  dimension: orders_12_weeks_since_reward {
    type: number
    sql: ${TABLE}."orders_12_weeks_since_reward" ;;
  }

  dimension: orders_12_weeks_till_reward {
    type: number
    sql: ${TABLE}."orders_12_weeks_till_reward" ;;
  }

  dimension: orders_16_weeks_since_reward {
    type: number
    sql: ${TABLE}."orders_16_weeks_since_reward" ;;
  }

  dimension: orders_16_weeks_till_reward {
    type: number
    sql: ${TABLE}."orders_16_weeks_till_reward" ;;
  }

  dimension: orders_4_weeks_since_reward {
    type: number
    sql: ${TABLE}."orders_4_weeks_since_reward" ;;
  }

  dimension: orders_4_weeks_till_reward {
    type: number
    sql: ${TABLE}."orders_4_weeks_till_reward" ;;
  }

  dimension: orders_8_weeks_since_reward {
    type: number
    sql: ${TABLE}."orders_8_weeks_since_reward" ;;
  }

  dimension: orders_8_weeks_till_reward {
    type: number
    sql: ${TABLE}."orders_8_weeks_till_reward" ;;
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
