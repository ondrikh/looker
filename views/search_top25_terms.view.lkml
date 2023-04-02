view: search_top25_terms {
  sql_table_name: "WORKSPACE_233686783"."search_top25_terms"
    ;;

  dimension: count_search_top25_terms {
    type: number
    sql: ${TABLE}."count" ;;
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

  dimension: rank_country {
    type: number
    sql: ${TABLE}."rank_country" ;;
  }

  dimension: rank_group {
    type: number
    sql: ${TABLE}."rank_group" ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}."rate" ;;
  }

  dimension: search_term {
    type: string
    sql: ${TABLE}."search_term" ;;
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
