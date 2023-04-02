view: clicktrough_rate_agg {
  sql_table_name: "WORKSPACE_233686783"."clicktrough_rate_agg"
    ;;

  dimension: basket {
    type: string
    sql: ${TABLE}."basket" ;;
  }

  dimension: click_count {
    type: string
    sql: ${TABLE}."click_count" ;;
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

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: pos_avg {
    type: string
    sql: ${TABLE}."pos_avg" ;;
  }

  dimension: pos_median {
    type: string
    sql: ${TABLE}."pos_median" ;;
  }

  dimension: pos_sum {
    type: string
    sql: ${TABLE}."pos_sum" ;;
  }

  dimension: search_count {
    type: string
    sql: ${TABLE}."search_count" ;;
  }

  dimension: showed {
    type: string
    sql: ${TABLE}."showed" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
