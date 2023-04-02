view: romania_pairing_report {
  sql_table_name: "WORKSPACE_233686783"."romania_pairing_report"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: competitor_name {
    type: string
    sql: ${TABLE}."competitor_name" ;;
  }

  dimension: competitor_price_unique_id {
    type: string
    sql: ${TABLE}."competitor_price_unique_id" ;;
  }

  dimension: competitor_prices_pairing_unique_id {
    type: string
    sql: ${TABLE}."competitor_prices_pairing_unique_id" ;;
  }

  dimension: competitor_product_name {
    type: string
    sql: ${TABLE}."competitor_product_name" ;;
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

  dimension: sezamo_product_name {
    type: string
    sql: ${TABLE}."sezamo_product_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      l1_category_name,
      competitor_name,
      l2_category_name,
      competitor_product_name,
      l3_category_name,
      sezamo_product_name
    ]
  }
}
