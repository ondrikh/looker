view: noname_triggered_campaign {
  sql_table_name: "WORKSPACE_233686783"."noname_triggered_campaign"
    ;;

  dimension: campaign_removed {
    type: string
    sql: ${TABLE}."campaign_removed" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
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
    sql: ${TABLE}."first_send_time" ;;
  }

  dimension: flow_id {
    type: string
    sql: ${TABLE}."flow_id" ;;
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
    sql: ${TABLE}."last_send_time" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: template_id {
    type: string
    sql: ${TABLE}."template_id" ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}."users" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
