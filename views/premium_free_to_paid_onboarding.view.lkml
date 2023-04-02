view: premium_free_to_paid_onboarding {
  sql_table_name: "WORKSPACE_233686783"."premium_free_to_paid_onboarding"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: first_premium_free {
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
    sql: ${TABLE}."first_premium_free_date" ;;
  }

  dimension: first_premium_origin {
    type: string
    sql: ${TABLE}."first_premium_origin" ;;
  }

  dimension: next_premium_amount {
    type: number
    sql: ${TABLE}."next_premium_amount" ;;
  }

  dimension_group: next_premium_created {
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
    sql: ${TABLE}."next_premium_created_at" ;;
  }

  dimension: next_premium_days {
    type: number
    sql: ${TABLE}."next_premium_days" ;;
  }

  dimension: next_premium_type {
    type: string
    sql: ${TABLE}."next_premium_type" ;;
  }

  dimension: next_premium_type_unique_id {
    type: string
    sql: ${TABLE}."next_premium_type_unique_id" ;;
  }

  dimension_group: next_premium_valid_since {
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
    sql: ${TABLE}."next_premium_valid_since" ;;
  }

  dimension_group: next_premium_valid_till {
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
    sql: ${TABLE}."next_premium_valid_till" ;;
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
