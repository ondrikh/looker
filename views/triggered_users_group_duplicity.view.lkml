view: triggered_users_group_duplicity {
  sql_table_name: "WORKSPACE_233686783"."triggered_users_group_duplicity"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
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

  dimension: template_name {
    type: string
    sql: ${TABLE}."template_name" ;;
  }

  dimension: template_unique_id {
    type: string
    sql: ${TABLE}."template_unique_id" ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}."users" ;;
  }

  measure: count {
    type: count
    drill_fields: [flow_name, template_name]
  }
}
