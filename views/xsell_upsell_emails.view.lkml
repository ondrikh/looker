view: xsell_upsell_emails {
  sql_table_name: "WORKSPACE_233686783"."xsell_upsell_emails"
    ;;

  dimension: clicked {
    type: string
    sql: ${TABLE}."clicked" ;;
  }

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

  dimension: flow_subcategory {
    type: string
    sql: ${TABLE}."flow_subcategory" ;;
  }

  dimension: flow_unique_id {
    type: string
    sql: ${TABLE}."flow_unique_id" ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: message_id {
    type: string
    sql: ${TABLE}."message_id" ;;
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
    drill_fields: [flow_name, template_name]
  }
}
