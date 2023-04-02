view: adhoc_flow_self_service_segment_evaluation {
  sql_table_name: "WORKSPACE_233686783"."adhoc_flow_self_service_segment_evaluation"
    ;;

  dimension: aov {
    type: string
    sql: ${TABLE}."aov" ;;
  }

  dimension: aov90 {
    type: string
    sql: ${TABLE}."aov90" ;;
  }

  dimension: arpu_level {
    type: string
    sql: ${TABLE}."arpu_level" ;;
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

  dimension_group: date_added {
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
    sql: ${TABLE}."date_added" ;;
  }

  dimension: dsfo {
    type: string
    sql: ${TABLE}."dsfo" ;;
  }

  dimension: dslo {
    type: string
    sql: ${TABLE}."dslo" ;;
  }

  dimension: fo_date {
    type: string
    sql: ${TABLE}."fo_date" ;;
  }

  dimension: frequency {
    type: string
    sql: ${TABLE}."frequency" ;;
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

  dimension: main_funnel {
    type: string
    sql: ${TABLE}."main_funnel" ;;
  }

  dimension: orders {
    type: string
    sql: ${TABLE}."orders" ;;
  }

  dimension: total_orders {
    type: string
    sql: ${TABLE}."total_orders" ;;
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
