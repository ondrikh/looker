view: supplier_ads_supplier_budget_spend {
  sql_table_name: "WORKSPACE_233686783"."supplier_ads_supplier_budget_spend"
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

  dimension_group: data_load {
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
    sql: ${TABLE}."data_load_time" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}."end" ;;
  }

  dimension: impression_count {
    type: number
    sql: ${TABLE}."impression_count" ;;
  }

  dimension: impression_total_cost {
    type: number
    sql: ${TABLE}."impression_total_cost" ;;
  }

  dimension: invoiced {
    type: number
    sql: ${TABLE}."invoiced" ;;
  }

  dimension_group: start {
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

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
