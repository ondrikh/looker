view: campaign_triggered_agg {
  sql_table_name: "WORKSPACE_233686783"."campaign_triggered_agg"
    ;;

  dimension: additional_per_100_users {
    type: number
    sql: ${TABLE}."additional_per_100_users" ;;
  }

  dimension: additional_per_campaign {
    type: number
    sql: ${TABLE}."additional_per_campaign" ;;
  }

  dimension: click_from_open_rate {
    type: number
    sql: ${TABLE}."click_from_open_rate" ;;
  }

  dimension: click_rate {
    type: number
    sql: ${TABLE}."click_rate" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: end_date {
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
    sql: ${TABLE}."end_date" ;;
  }

  dimension_group: first_send {
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
    sql: ${TABLE}."first_send_date" ;;
  }

  dimension: flow_category {
    type: string
    sql: ${TABLE}."flow_category" ;;
  }

  dimension: flow_name {
    type: string
    sql: ${TABLE}."flow_name" ;;
  }

  dimension: flow_unique_id {
    type: string
    sql: ${TABLE}."flow_unique_id" ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension_group: last_send {
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
    sql: ${TABLE}."last_send_date" ;;
  }

  dimension: metric_delivered {
    type: number
    sql: ${TABLE}."metric_delivered" ;;
  }

  dimension: metric_name {
    type: string
    sql: ${TABLE}."metric_name" ;;
  }

  dimension: metric_per_user {
    type: number
    sql: ${TABLE}."metric_per_user" ;;
  }

  dimension: open_rate {
    type: number
    sql: ${TABLE}."open_rate" ;;
  }

  dimension: p_value {
    type: number
    sql: ${TABLE}."p_value" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."start_date" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: template_name {
    type: string
    sql: ${TABLE}."template_name" ;;
  }

  dimension: template_unique_id {
    type: string
    sql: ${TABLE}."template_unique_id" ;;
  }

  dimension: uplift {
    type: number
    sql: ${TABLE}."uplift" ;;
  }

  dimension: uplift_significancy {
    type: string
    sql: ${TABLE}."uplift_significancy" ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}."users" ;;
  }

  dimension: users_evaluation {
    type: string
    sql: ${TABLE}."users_evaluation" ;;
  }

  dimension: users_open {
    type: number
    sql: ${TABLE}."users_open" ;;
  }

  dimension: z {
    type: number
    sql: ${TABLE}."z" ;;
  }

  measure: count {
    type: count
    drill_fields: [template_name, flow_name, metric_name]
  }
}
