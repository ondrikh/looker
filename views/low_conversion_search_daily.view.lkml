view: low_conversion_search_daily {
  sql_table_name: "WORKSPACE_233686783"."low_conversion_search_daily"
    ;;

  dimension: conversion_rate {
    type: string
    sql: ${TABLE}."conversion_rate" ;;
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

  dimension: search_term {
    type: string
    sql: ${TABLE}."search_term" ;;
  }

  dimension: total_add_count {
    type: string
    sql: ${TABLE}."total_add_count" ;;
  }

  dimension: total_search_count {
    type: string
    sql: ${TABLE}."total_search_count" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
