view: pricing_guardrails_price_ledder {
  sql_table_name: "WORKSPACE_233686783"."pricing_guardrails_price_ledder"
    ;;

  dimension: category_key {
    type: string
    sql: ${TABLE}."category_key" ;;
  }

  dimension: category_name_key {
    type: string
    sql: ${TABLE}."category_name_key" ;;
  }

  dimension: competitor_prices_pairing_unique_id {
    type: string
    sql: ${TABLE}."competitor_prices_pairing_unique_id" ;;
  }

  dimension: count_of_product_at_each_price_point {
    type: string
    sql: ${TABLE}."count_of_product_at_each_price_point" ;;
  }

  dimension: is_paired {
    type: string
    sql: ${TABLE}."is_paired" ;;
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

  dimension: list_paired_product_ids {
    type: string
    sql: ${TABLE}."list_paired_product_ids" ;;
  }

  dimension: list_paired_product_names {
    type: string
    sql: ${TABLE}."list_paired_product_names" ;;
  }

  dimension: list_paired_product_normal_price {
    type: string
    sql: ${TABLE}."list_paired_product_normal_price" ;;
  }

  dimension: list_paired_product_unit_price {
    type: string
    sql: ${TABLE}."list_paired_product_unit_price" ;;
  }

  dimension: list_product_ids {
    type: string
    sql: ${TABLE}."list_product_ids" ;;
  }

  dimension: list_product_names {
    type: string
    sql: ${TABLE}."list_product_names" ;;
  }

  dimension: list_unit_prices {
    type: string
    sql: ${TABLE}."list_unit_prices" ;;
  }

  dimension: paired_l1_category_name {
    type: string
    sql: ${TABLE}."paired_L1_category_name" ;;
  }

  dimension: paired_l2_category_name {
    type: string
    sql: ${TABLE}."paired_L2_category_name" ;;
  }

  dimension: paired_l3_category_name {
    type: string
    sql: ${TABLE}."paired_L3_category_name" ;;
  }

  dimension: paired_product_id {
    type: string
    sql: ${TABLE}."paired_product_id" ;;
  }

  dimension: paired_product_name {
    type: string
    sql: ${TABLE}."paired_product_name" ;;
  }

  dimension: paired_product_normal_price {
    type: number
    sql: ${TABLE}."paired_product_normal_price" ;;
  }

  dimension: paired_product_unit_price {
    type: number
    sql: ${TABLE}."paired_product_unit_price" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."price" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}."unit_price" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      paired_l3_category_name,
      l2_category_name,
      l1_category_name,
      paired_product_name,
      product_name,
      paired_l1_category_name,
      paired_l2_category_name,
      l3_category_name
    ]
  }
}
