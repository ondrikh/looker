view: search_conversions_agg {
  sql_table_name: "WORKSPACE_233686783"."search_conversions_agg"
    ;;

  dimension: ab_test {
    type: string
    sql: ${TABLE}."ab_test" ;;
  }

  dimension: add_to_cart {
    type: number
    sql: ${TABLE}."add_to_cart" ;;
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

  dimension: new_items_top8 {
    type: number
    sql: ${TABLE}."new_items_top8" ;;
  }

  dimension: no_results_count {
    type: number
    sql: ${TABLE}."no_results_count" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: position_median_country {
    type: number
    sql: ${TABLE}."position_median_country" ;;
  }

  dimension: position_median_group {
    type: number
    sql: ${TABLE}."position_median_group" ;;
  }

  dimension: position_median_group_last7d {
    type: number
    sql: ${TABLE}."position_median_group_last7d" ;;
  }

  dimension: search_count {
    type: number
    sql: ${TABLE}."search_count" ;;
  }

  dimension: search_with_interaction_count {
    type: number
    sql: ${TABLE}."search_with_interaction_count" ;;
  }

  dimension: total_items_top8 {
    type: number
    sql: ${TABLE}."total_items_top8" ;;
  }

  dimension: total_search_rows_count {
    type: number
    sql: ${TABLE}."total_search_rows_count" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
