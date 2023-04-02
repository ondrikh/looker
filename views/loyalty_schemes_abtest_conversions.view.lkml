view: loyalty_schemes_abtest_conversions {
  sql_table_name: "WORKSPACE_233686783"."loyalty_schemes_abtest_conversions"
    ;;

  dimension: abtest_unique_id {
    type: string
    sql: ${TABLE}."abtest_unique_id" ;;
  }

  dimension_group: conversion {
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
    sql: ${TABLE}."conversion_date" ;;
  }

  dimension: conversion_description {
    type: string
    sql: ${TABLE}."conversion_description" ;;
  }

  dimension: conversion_type {
    type: string
    sql: ${TABLE}."conversion_type" ;;
  }

  dimension: conversion_type_detail {
    type: string
    sql: ${TABLE}."conversion_type_detail" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension_group: valid_since {
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
    sql: ${TABLE}."valid_since" ;;
  }

  dimension_group: valid_till {
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
    sql: ${TABLE}."valid_till" ;;
  }

  dimension: variant {
    type: string
    sql: ${TABLE}."variant" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
