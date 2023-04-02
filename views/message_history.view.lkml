view: message_history {
  sql_table_name: "WORKSPACE_233686783"."message_history"
    ;;

  dimension: campaign_subtype {
    type: string
    sql: ${TABLE}."campaign_subtype" ;;
  }

  dimension: campaign_type {
    type: string
    sql: ${TABLE}."campaign_type" ;;
  }

  dimension: campaign_unique_id {
    type: string
    sql: ${TABLE}."campaign_unique_id" ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}."channel" ;;
  }

  dimension: clicked {
    type: string
    sql: ${TABLE}."clicked" ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: incentive_type {
    type: string
    sql: ${TABLE}."incentive_type" ;;
  }

  dimension: incentive_used {
    type: string
    sql: ${TABLE}."incentive_used" ;;
  }

  dimension: opened {
    type: string
    sql: ${TABLE}."opened" ;;
  }

  dimension_group: send {
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
    sql: ${TABLE}."send_time" ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}."start_date" ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}."subject" ;;
  }

  dimension: template_unique_id {
    type: string
    sql: ${TABLE}."template_unique_id" ;;
  }

  dimension: transactional_flag {
    type: string
    sql: ${TABLE}."transactional_flag" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
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
