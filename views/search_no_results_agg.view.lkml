view: search_no_results_agg {
  sql_table_name: "WORKSPACE_233686783"."search_no_results_agg"
    ;;

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

  dimension: no_results_count {
    type: number
    sql: ${TABLE}."no_results_count" ;;
  }

  dimension: no_results_share {
    type: number
    sql: ${TABLE}."no_results_share" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: total_searches {
    type: number
    sql: ${TABLE}."total_searches" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
