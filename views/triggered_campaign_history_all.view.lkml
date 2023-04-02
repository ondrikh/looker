view: triggered_campaign_history_all {
  sql_table_name: "WORKSPACE_233686783"."triggered_campaign_history_all"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: campaign_type {
    type: string
    sql: ${TABLE}."campaign_type" ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}."channel" ;;
  }

  dimension: clicked {
    type: string
    sql: ${TABLE}."clicked" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: custom_field_tracker {
    type: string
    sql: ${TABLE}."custom_field_tracker" ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}."customer" ;;
  }

  dimension_group: first_click {
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
    sql: ${TABLE}."first_click_time" ;;
  }

  dimension_group: first_open {
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
    sql: ${TABLE}."first_open_time" ;;
  }

  dimension: flow_id {
    type: string
    sql: ${TABLE}."flow_id" ;;
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

  dimension: opened {
    type: string
    sql: ${TABLE}."opened" ;;
  }

  dimension: send_time {
    type: string
    sql: ${TABLE}."send_time" ;;
  }

  dimension: sharp_metric {
    type: string
    sql: ${TABLE}."sharp_metric" ;;
  }

  dimension: sharp_metric_reason {
    type: string
    sql: ${TABLE}."sharp_metric_reason" ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."start_date" ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}."subject" ;;
  }

  dimension: template_id {
    type: string
    sql: ${TABLE}."template_id" ;;
  }

  dimension: template_name {
    type: string
    sql: ${TABLE}."template_name" ;;
  }

  dimension: template_unique_id {
    type: string
    sql: ${TABLE}."template_unique_id" ;;
  }

  dimension: unsubscribed {
    type: string
    sql: ${TABLE}."unsubscribed" ;;
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
    drill_fields: [id, flow_name, template_name, user.id]
  }
}
