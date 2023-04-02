view: pricing_suggestion_monitoring {
  sql_table_name: "WORKSPACE_233686783"."pricing_suggestion_monitoring"
    ;;

  dimension: competitor_name {
    type: string
    sql: ${TABLE}."competitor_name" ;;
  }

  dimension: competitor_price {
    type: string
    sql: ${TABLE}."competitor_price" ;;
  }

  dimension_group: competitor_prices_error_created {
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
    sql: ${TABLE}."competitor_prices_error_created_at" ;;
  }

  dimension: competitor_prices_error_created_by {
    type: string
    sql: ${TABLE}."competitor_prices_error_created_by" ;;
  }

  dimension: competitor_prices_unique_id {
    type: string
    sql: ${TABLE}."competitor_prices_unique_id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: created_at {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension: error_type {
    type: string
    sql: ${TABLE}."error_type" ;;
  }

  dimension: family_unique_id {
    type: string
    sql: ${TABLE}."family_unique_id" ;;
  }

  dimension: kind_of_proposal {
    type: string
    sql: ${TABLE}."kind_of_proposal" ;;
  }

  dimension: product_price {
    type: string
    sql: ${TABLE}."product_price" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: solved {
    type: string
    sql: ${TABLE}."solved" ;;
  }

  dimension_group: solved {
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
    sql: ${TABLE}."solved_at" ;;
  }

  dimension: solved_by {
    type: string
    sql: ${TABLE}."solved_by" ;;
  }

  dimension: solved_by_user_email {
    type: string
    sql: ${TABLE}."solved_by_user_email" ;;
  }

  dimension: solved_by_user_id {
    type: string
    sql: ${TABLE}."solved_by_user_id" ;;
  }

  dimension: suggested_price {
    type: string
    sql: ${TABLE}."suggested_price" ;;
  }

  dimension: suspended {
    type: string
    sql: ${TABLE}."suspended" ;;
  }

  dimension_group: suspended {
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
    sql: ${TABLE}."suspended_at" ;;
  }

  dimension: suspended_by {
    type: string
    sql: ${TABLE}."suspended_by" ;;
  }

  dimension: suspended_by_id {
    type: string
    sql: ${TABLE}."suspended_by_id" ;;
  }

  dimension: suspension_reason {
    type: string
    sql: ${TABLE}."suspension_reason" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [competitor_name]
  }
}
