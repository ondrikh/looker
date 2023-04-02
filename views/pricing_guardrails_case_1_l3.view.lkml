view: pricing_guardrails_case_1_l3 {
  sql_table_name: "WORKSPACE_233686783"."pricing_guardrails_case_1_l3"
    ;;

  dimension: accuracy_of_the_match {
    type: string
    sql: ${TABLE}."accuracy_of_the_match" ;;
  }

  dimension: category_3_competitor {
    type: string
    sql: ${TABLE}."category_3_competitor" ;;
  }

  dimension: competitor_min_price {
    type: number
    sql: ${TABLE}."competitor_min_price" ;;
  }

  dimension: competitor_normal_price {
    type: string
    sql: ${TABLE}."competitor_normal_price" ;;
  }

  dimension: competitor_product_name_min_price {
    type: string
    sql: ${TABLE}."competitor_product_name_min_price" ;;
  }

  dimension: competitor_unit_normal_price {
    type: string
    sql: ${TABLE}."competitor_unit_normal_price" ;;
  }

  dimension: count_of_competitor_products_with_min_price {
    type: number
    sql: ${TABLE}."count_of_competitor_products_with_min_price" ;;
  }

  dimension: count_of_rohlik_products_with_min_price {
    type: number
    sql: ${TABLE}."count_of_rohlik_products_with_min_price" ;;
  }

  dimension: flag {
    type: string
    sql: ${TABLE}."flag" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."L3_category_name" ;;
  }

  dimension: nr_last_30d {
    type: number
    sql: ${TABLE}."NR_last_30d" ;;
  }

  dimension: rohlik_min_price {
    type: number
    sql: ${TABLE}."rohlik_min_price" ;;
  }

  dimension: rohlik_normal_price {
    type: number
    sql: ${TABLE}."rohlik_normal_price" ;;
  }

  dimension: rohlik_product_id_min_price {
    type: string
    sql: ${TABLE}."rohlik_product_id_min_price" ;;
  }

  dimension: rohlik_product_name_min_price {
    type: string
    sql: ${TABLE}."rohlik_product_name_min_price" ;;
  }

  dimension: rohlik_unit_normal_price {
    type: number
    sql: ${TABLE}."rohlik_unit_normal_price" ;;
  }

  measure: count {
    type: count
    drill_fields: [l3_category_name]
  }
}
