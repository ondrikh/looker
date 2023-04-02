view: sailthrou_ad_hoc_flow_campaign {
  sql_table_name: "WORKSPACE_233686783"."sailthrou_AdHoc_Flow_campaign"
    ;;

  dimension: aov {
    type: number
    sql: ${TABLE}."AOV" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}."date" ;;
  }

  dimension: date_added {
    type: string
    sql: ${TABLE}."date_added" ;;
  }

  dimension: days {
    type: number
    sql: ${TABLE}."days" ;;
  }

  dimension: gr {
    type: number
    sql: ${TABLE}."gr" ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: list {
    type: string
    sql: ${TABLE}."list" ;;
  }

  dimension: list_name {
    type: string
    sql: ${TABLE}."list_name" ;;
  }

  dimension: order_count {
    type: number
    sql: ${TABLE}."order_count" ;;
  }

  dimension: order_user_unique_id {
    type: string
    sql: ${TABLE}."order_user_unique_id" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [list_name]
  }
}
