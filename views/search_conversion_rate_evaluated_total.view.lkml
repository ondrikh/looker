view: search_conversion_rate_evaluated_total {
  sql_table_name: "WORKSPACE_233686783"."search_conversion_rate_evaluated_total"
    ;;

  dimension: ab_variant {
    type: string
    sql: ${TABLE}."ab_variant" ;;
  }

  dimension: count_failure {
    type: number
    sql: ${TABLE}."count_failure" ;;
  }

  dimension: count_success {
    type: number
    sql: ${TABLE}."count_success" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: search_term {
    type: string
    sql: ${TABLE}."search_term" ;;
  }

  dimension: year_month_day {
    type: string
    sql: ${TABLE}."year_month_day" ;;
  }

  dimension: year_week {
    type: string
    sql: ${TABLE}."year_week" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
