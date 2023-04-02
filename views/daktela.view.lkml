view: daktela {
  sql_table_name: "WORKSPACE_233686783"."daktela"
    ;;

  dimension: activity_name {
    type: string
    sql: ${TABLE}."activity_name" ;;
  }

  dimension: activity_type {
    type: string
    sql: ${TABLE}."activity_type" ;;
  }

  dimension: agent_email {
    type: string
    sql: ${TABLE}."agent_email" ;;
  }

  dimension: agent_name {
    type: string
    sql: ${TABLE}."agent_name" ;;
  }

  dimension: aht_min {
    type: number
    sql: ${TABLE}."AHT_min" ;;
  }

  dimension: answer_time_hrs {
    type: number
    sql: ${TABLE}."answer_time_hrs" ;;
  }

  dimension: answered {
    type: string
    sql: ${TABLE}."answered" ;;
  }

  dimension_group: call {
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
    sql: ${TABLE}."call_time" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."date" ;;
  }

  dimension: direction {
    type: string
    sql: ${TABLE}."direction" ;;
  }

  dimension: disconnection_cause {
    type: string
    sql: ${TABLE}."disconnection_cause" ;;
  }

  dimension: forecast_calls {
    type: number
    sql: ${TABLE}."forecast_calls" ;;
  }

  dimension: forecast_chat {
    type: number
    sql: ${TABLE}."forecast_chat" ;;
  }

  dimension: forecast_emails {
    type: number
    sql: ${TABLE}."forecast_emails" ;;
  }

  dimension: in_sla {
    type: string
    sql: ${TABLE}."IN_SLA" ;;
  }

  dimension: in_threshold_20 {
    type: string
    sql: ${TABLE}."in_threshold_20" ;;
  }

  dimension: in_threshold_30 {
    type: string
    sql: ${TABLE}."in_threshold_30" ;;
  }

  dimension: offered {
    type: string
    sql: ${TABLE}."offered" ;;
  }

  dimension: orders_prediction {
    type: number
    sql: ${TABLE}."orders_prediction" ;;
  }

  dimension: orders_reality {
    type: number
    sql: ${TABLE}."orders_reality" ;;
  }

  dimension: positive_evaluation {
    type: number
    sql: ${TABLE}."positive_evaluation" ;;
  }

  dimension: queue_group_title_en {
    type: string
    sql: ${TABLE}."queue_group_title_en" ;;
  }

  dimension: queue_name {
    type: string
    sql: ${TABLE}."queue_name" ;;
  }

  dimension: queue_name_en {
    type: string
    sql: ${TABLE}."queue_name_en" ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}."score" ;;
  }

  dimension: statuses {
    type: string
    sql: ${TABLE}."statuses" ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}."time" ;;
  }

  dimension: wait_time_min {
    type: number
    sql: ${TABLE}."wait_time_min" ;;
  }

  measure: count {
    type: count
    drill_fields: [agent_name, queue_name, activity_name]
  }
}
