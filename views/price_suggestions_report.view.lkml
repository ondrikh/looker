view: price_suggestions_report {
  sql_table_name: "WORKSPACE_233686783"."price_suggestions_report"
    ;;

  dimension: competitor_name {
    type: string
    sql: ${TABLE}."competitor_name" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: created {
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

  dimension: days_to_solve {
    type: number
    sql: ${TABLE}."days_to_solve" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}."L2_category_name" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."L3_category_name" ;;
  }

  dimension: number_of_relevant_products {
    type: number
    sql: ${TABLE}."number_of_relevant_products" ;;
  }

  dimension: price_suggestion_unique_id {
    type: string
    sql: ${TABLE}."price_suggestion_unique_id" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: responsible_user {
    type: string
    sql: ${TABLE}."responsible_user" ;;
  }

  dimension: responsible_user_senior {
    type: string
    sql: ${TABLE}."responsible_user_senior" ;;
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

  dimension: solved_or_suspended {
    type: string
    sql: ${TABLE}."solved_or_suspended" ;;
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

  measure: count {
    type: count
    drill_fields: [l3_category_name, competitor_name, l1_category_name, l2_category_name, product_name]
  }
}
