view: control_groups {
  sql_table_name: "WORKSPACE_233686783"."control_groups"
    ;;

  dimension: batch_emails_open_rate {
    type: number
    sql: ${TABLE}."batch_emails_open_rate" ;;
  }

  dimension: batch_emails_opened {
    type: number
    sql: ${TABLE}."batch_emails_opened" ;;
  }

  dimension: batch_emails_sent {
    type: number
    sql: ${TABLE}."batch_emails_sent" ;;
  }

  dimension: control_last_3_months {
    type: number
    sql: ${TABLE}."control_last_3_months" ;;
  }

  dimension: control_last_6_months {
    type: number
    sql: ${TABLE}."control_last_6_months" ;;
  }

  dimension: control_sequence {
    type: string
    sql: ${TABLE}."control_sequence" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date_end {
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
    sql: ${TABLE}."date_end" ;;
  }

  dimension_group: date_start {
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
    sql: ${TABLE}."date_start" ;;
  }

  dimension: master_user_unique_id {
    type: string
    sql: ${TABLE}."master_user_unique_id" ;;
  }

  dimension: prior_variant {
    type: string
    sql: ${TABLE}."prior_variant" ;;
  }

  dimension: total_emails_open_rate {
    type: number
    sql: ${TABLE}."total_emails_open_rate" ;;
  }

  dimension: total_emails_opened {
    type: number
    sql: ${TABLE}."total_emails_opened" ;;
  }

  dimension: total_emails_sent {
    type: number
    sql: ${TABLE}."total_emails_sent" ;;
  }

  dimension: triggered_emails_opened {
    type: number
    sql: ${TABLE}."triggered_emails_opened" ;;
  }

  dimension: triggered_emails_sent {
    type: number
    sql: ${TABLE}."triggered_emails_sent" ;;
  }

  dimension: triggereed_emails_open_rate {
    type: number
    sql: ${TABLE}."triggereed_emails_open_rate" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: variant {
    type: string
    sql: ${TABLE}."variant" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
