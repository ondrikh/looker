view: search_no_results_count {
  sql_table_name: "WORKSPACE_233686783"."search_no_results_count"
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
    sql: ${TABLE}."No Results Count" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: search_term {
    type: string
    sql: ${TABLE}."Search Term" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
