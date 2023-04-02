view: case_2_l3 {
  sql_table_name: "WORKSPACE_233686783"."case_2_l3"
    ;;

  dimension: competitor_product_name_paired_pg1 {
    type: string
    sql: ${TABLE}."competitor_product_name_paired_PG1" ;;
  }

  dimension: competitor_product_name_paired_pg3 {
    type: string
    sql: ${TABLE}."competitor_product_name_paired_PG3" ;;
  }

  dimension: count_of_competitors_products_within_range {
    type: number
    sql: ${TABLE}."count_of_competitors_products_within_range" ;;
  }

  dimension: count_of_rohliks_products_within_range {
    type: number
    sql: ${TABLE}."count_of_rohliks_products_within_range" ;;
  }

  dimension: flag {
    type: string
    sql: ${TABLE}."flag" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."L3_category_name" ;;
  }

  dimension: max_price_pg1 {
    type: number
    sql: ${TABLE}."max_price_PG1" ;;
  }

  dimension: min_price_of_competitors_products_within_range {
    type: number
    sql: ${TABLE}."min_price_of_competitors_products_within_range" ;;
  }

  dimension: min_price_of_rohliks_products_within_range {
    type: number
    sql: ${TABLE}."min_price_of_rohliks_products_within_range" ;;
  }

  dimension: min_price_pg3 {
    type: number
    sql: ${TABLE}."min_price_PG3" ;;
  }

  dimension: price_of_paired_competitor_pg1 {
    type: number
    sql: ${TABLE}."price_of_paired_competitor_PG1" ;;
  }

  dimension: price_of_paired_competitor_pg3 {
    type: number
    sql: ${TABLE}."price_of_paired_competitor_PG3" ;;
  }

  dimension: product_name_of_max_price_pg1_product {
    type: string
    sql: ${TABLE}."product_name_of_max_price_PG1_product" ;;
  }

  dimension: product_name_of_min_price_pg3_product {
    type: string
    sql: ${TABLE}."product_name_of_min_price_PG3_product" ;;
  }

  dimension: product_unique_id_of_max_price_pg1_product {
    type: string
    sql: ${TABLE}."product_unique_id_of_max_price_PG1_product" ;;
  }

  dimension: product_unique_id_of_min_price_pg3_product {
    type: string
    sql: ${TABLE}."product_unique_id_of_min_price_PG3_product" ;;
  }

  measure: count {
    type: count
    drill_fields: [l3_category_name]
  }
}
