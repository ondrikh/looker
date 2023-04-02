view: user_current_premium_status_snapshot {
  sql_table_name: "WORKSPACE_233686783"."user_current_premium_status_snapshot"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: current_premium_till {
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
    sql: ${TABLE}."current_premium_till" ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}."date" ;;
  }

  dimension: has_payment_scheduler {
    type: string
    sql: ${TABLE}."has_payment_scheduler" ;;
  }

  dimension_group: next_payment_trigger {
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
    sql: ${TABLE}."next_payment_trigger_at" ;;
  }

  dimension: next_premium_type {
    type: string
    sql: ${TABLE}."next_premium_type" ;;
  }

  dimension: paid {
    type: string
    sql: ${TABLE}."paid" ;;
  }

  dimension: premium_type {
    type: string
    sql: ${TABLE}."premium_type" ;;
  }

  dimension_group: total_premium_till {
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
    sql: ${TABLE}."total_premium_till" ;;
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
