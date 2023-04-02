view: customer_segment_change {
  sql_table_name: "WORKSPACE_233686783"."customer_segment_change"
    ;;

  dimension: active {
    type: number
    sql: ${TABLE}."active" ;;
  }

  dimension: activity_last_60days {
    type: string
    sql: ${TABLE}."activity_last_60days" ;;
  }

  dimension: churned {
    type: number
    sql: ${TABLE}."churned" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."date" ;;
  }

  dimension: non_active {
    type: number
    sql: ${TABLE}."non_active" ;;
  }

  dimension: re_activated {
    type: number
    sql: ${TABLE}."re_activated" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
