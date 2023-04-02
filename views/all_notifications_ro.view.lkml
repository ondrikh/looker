view: all_notifications_ro {
  sql_table_name: "WORKSPACE_233686783"."all_notifications_ro"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}."campaign_id" ;;
  }

  dimension: campaign_unique_id {
    type: string
    sql: ${TABLE}."campaign_unique_id" ;;
  }

  dimension: clicked {
    type: number
    sql: ${TABLE}."clicked" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}."email_address" ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: open_count {
    type: number
    sql: ${TABLE}."open_count" ;;
  }

  dimension: opened {
    type: number
    sql: ${TABLE}."opened" ;;
  }

  dimension: schedule_time {
    type: string
    sql: ${TABLE}."schedule_time" ;;
  }

  dimension: send_time {
    type: string
    sql: ${TABLE}."send_time" ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}."subject" ;;
  }

  dimension: template_id {
    type: string
    sql: ${TABLE}."template_id" ;;
  }

  dimension: template_unique_id {
    type: string
    sql: ${TABLE}."template_unique_id" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, user.id]
  }
}
