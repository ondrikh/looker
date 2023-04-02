view: triggered_campaign_evaluation {
  sql_table_name: "WORKSPACE_233686783"."triggered_campaign_evaluation"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
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

  dimension: evaluation_completed {
    type: string
    sql: ${TABLE}."evaluation_completed" ;;
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

  dimension: metric_delivered {
    type: number
    sql: ${TABLE}."metric_delivered" ;;
  }

  dimension: metric_name {
    type: string
    sql: ${TABLE}."metric_name" ;;
  }

  dimension: opened_in_time {
    type: string
    sql: ${TABLE}."opened_in_time" ;;
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

  dimension: template_name {
    type: string
    sql: ${TABLE}."template_name" ;;
  }

  dimension: template_unique_id {
    type: string
    sql: ${TABLE}."template_unique_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, metric_name, template_name, flow_name]
  }
}
