view: workspace_233686783_pricing_guardrails_case_3_l2 {
  sql_table_name: "WORKSPACE_233686783"."pricing_guardrails_case_3_L2"
    ;;

  dimension: competitor_max_price {
    type: number
    sql: ${TABLE}."competitor_max_price" ;;
  }

  dimension: competitor_product_name_max_price {
    type: string
    sql: ${TABLE}."competitor_product_name_max_price" ;;
  }

  dimension: count_of_competitor_products_with_max_price {
    type: number
    sql: ${TABLE}."count_of_competitor_products_with_max_price" ;;
  }

  dimension: count_of_rohlik_products_with_max_price {
    type: number
    sql: ${TABLE}."count_of_rohlik_products_with_max_price" ;;
  }

  dimension: flag {
    type: string
    sql: ${TABLE}."flag" ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}."L2_category_name" ;;
  }

  dimension: rohlik_max_price {
    type: number
    sql: ${TABLE}."rohlik_max_price" ;;
  }

  dimension: rohlik_product_id_max_price {
    type: string
    sql: ${TABLE}."rohlik_product_id_max_price" ;;
  }

  dimension: rohlik_product_name_max_price {
    type: string
    sql: ${TABLE}."rohlik_product_name_max_price" ;;
  }

  measure: count {
    type: count
    drill_fields: [l2_category_name]
  }
}
