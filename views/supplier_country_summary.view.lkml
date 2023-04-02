view: supplier_country_summary {
  sql_table_name: "WORKSPACE_233686783"."supplier_country_summary"
    ;;

  dimension: active {
    type: number
    sql: ${TABLE}."active" ;;
  }

  dimension: available {
    type: number
    sql: ${TABLE}."available" ;;
  }

  dimension: churn {
    type: number
    sql: ${TABLE}."churn" ;;
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

  dimension: registered {
    type: number
    sql: ${TABLE}."registered" ;;
  }

  dimension: return {
    type: number
    sql: ${TABLE}."return" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
