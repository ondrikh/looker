view: daktela_call_center_evaluation {
  sql_table_name: "WORKSPACE_233686783"."daktela_call_center_evaluation"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: benefit {
    type: string
    sql: ${TABLE}."benefit" ;;
  }

  dimension: database {
    type: string
    sql: ${TABLE}."database" ;;
  }

  dimension: days_since_first_order {
    type: string
    sql: ${TABLE}."days_since_first_order" ;;
  }

  dimension: days_since_previous {
    type: string
    sql: ${TABLE}."days_since_previous" ;;
  }

  dimension: deliver_at {
    type: string
    sql: ${TABLE}."deliver_at" ;;
  }

  dimension: edited {
    type: string
    sql: ${TABLE}."edited" ;;
  }

  dimension: gr {
    type: string
    sql: ${TABLE}."gr" ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: is_first_order {
    type: string
    sql: ${TABLE}."is_first_order" ;;
  }

  dimension: master_order_unique_id {
    type: string
    sql: ${TABLE}."master_order_unique_id" ;;
  }

  dimension: optout {
    type: string
    sql: ${TABLE}."optout" ;;
  }

  dimension: order_arpu_level {
    type: string
    sql: ${TABLE}."order_arpu_level" ;;
  }

  dimension: order_benefit {
    type: string
    sql: ${TABLE}."order_benefit" ;;
  }

  dimension: order_by_premium_user {
    type: string
    sql: ${TABLE}."order_by_premium_user" ;;
  }

  dimension: order_by_premium_user_paid {
    type: string
    sql: ${TABLE}."order_by_premium_user_paid" ;;
  }

  dimension: order_main_funnel {
    type: string
    sql: ${TABLE}."order_main_funnel" ;;
  }

  dimension: order_sequence {
    type: string
    sql: ${TABLE}."order_sequence" ;;
  }

  dimension: record_type {
    type: string
    sql: ${TABLE}."record_type" ;;
  }

  dimension: statuses {
    type: string
    sql: ${TABLE}."statuses" ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}."time" ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}."user" ;;
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

  dimension: vysledek_hovoru {
    type: string
    sql: ${TABLE}."vysledek_hovoru" ;;
  }

  dimension: vysledek_hovoru_progresiv {
    type: string
    sql: ${TABLE}."vysledek_hovoru_progresiv" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user.id]
  }
}
