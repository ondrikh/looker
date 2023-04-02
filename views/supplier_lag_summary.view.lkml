view: supplier_lag_summary {
  sql_table_name: "WORKSPACE_233686783"."supplier_lag_summary"
    ;;

  dimension: agg_active {
    type: number
    sql: ${TABLE}."agg_active" ;;
  }

  dimension: agg_active_3_m {
    type: number
    sql: ${TABLE}."agg_active_3M" ;;
  }

  dimension: churn {
    type: number
    sql: ${TABLE}."churn" ;;
  }

  dimension: churn_3_m {
    type: number
    sql: ${TABLE}."churn_3M" ;;
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
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."date" ;;
  }

  dimension: first {
    type: number
    sql: ${TABLE}."first" ;;
  }

  dimension: official_name {
    type: string
    sql: ${TABLE}."official_name" ;;
  }

  dimension: return {
    type: number
    sql: ${TABLE}."return" ;;
  }

  dimension: supplier_average_budget {
    type: number
    sql: ${TABLE}."supplier_average_budget" ;;
  }

  dimension: supplier_average_duration {
    type: number
    sql: ${TABLE}."supplier_average_duration" ;;
  }

  dimension: supplier_number_of_campaign {
    type: number
    sql: ${TABLE}."supplier_number_of_campaign" ;;
  }

  dimension: supplier_total_budget {
    type: number
    sql: ${TABLE}."supplier_total_budget" ;;
  }

  dimension: supplier_total_duration {
    type: number
    sql: ${TABLE}."supplier_total_duration" ;;
  }

  dimension: unique_supplier_id {
    type: string
    sql: ${TABLE}."unique_supplier_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [official_name]
  }
}
