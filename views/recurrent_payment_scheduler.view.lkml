view: recurrent_payment_scheduler {
  sql_table_name: "WORKSPACE_233686783"."recurrent_payment_scheduler"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."amount" ;;
  }

  dimension_group: canceled {
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
    sql: ${TABLE}."canceled_at" ;;
  }

  dimension: cancelled_by_system {
    type: string
    sql: ${TABLE}."cancelled_by_system" ;;
  }

  dimension: cancelled_by_user {
    type: string
    sql: ${TABLE}."cancelled_by_user" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension: payment_id {
    type: string
    sql: ${TABLE}."payment_id" ;;
  }

  dimension: payment_unique_id {
    type: string
    sql: ${TABLE}."payment_unique_id" ;;
  }

  dimension_group: trigger {
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
    sql: ${TABLE}."trigger_at" ;;
  }

  dimension: trigger_count {
    type: string
    sql: ${TABLE}."trigger_count" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}."updated_at" ;;
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
    drill_fields: [id, user.id]
  }
}
