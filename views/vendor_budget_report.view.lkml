view: vendor_budget_report {
  sql_table_name: "WORKSPACE_233686783"."vendor_budget_report"
    ;;

  dimension: amount {
    type: number
    sql: ${TABLE}."amount" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}."end" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."start" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: supplier {
    type: string
    sql: ${TABLE}."supplier" ;;
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
