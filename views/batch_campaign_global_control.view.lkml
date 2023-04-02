view: batch_campaign_global_control {
  sql_table_name: "WORKSPACE_233686783"."batch_campaign_global_control"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: abtest_percent {
    type: string
    sql: ${TABLE}."abtest_percent" ;;
  }

  dimension: abtest_segment {
    type: string
    sql: ${TABLE}."abtest_segment" ;;
  }

  dimension: abtest_type {
    type: string
    sql: ${TABLE}."abtest_type" ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}."campaign_name" ;;
  }

  dimension: campaign_unique_id {
    type: string
    sql: ${TABLE}."campaign_unique_id" ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}."channel" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: send_time {
    type: string
    sql: ${TABLE}."send_time" ;;
  }

  dimension: start_time {
    type: string
    sql: ${TABLE}."start_time" ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}."subject" ;;
  }

  dimension: template_unique_id {
    type: string
    sql: ${TABLE}."template_unique_id" ;;
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
    drill_fields: [id, campaign_name, user.id]
  }
}
