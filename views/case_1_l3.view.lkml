view: case_1_l3 {
  sql_table_name: "WORKSPACE_233686783"."case_1_l3"
    ;;

  dimension: competitor_min_price {
    type: number
    sql: ${TABLE}."competitor_min_price" ;;
  }

  dimension: competitor_product_name_min_price {
    type: string
    sql: ${TABLE}."competitor_product_name_min_price" ;;
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

  dimension: rohlik_min_price {
    type: number
    sql: ${TABLE}."rohlik_min_price" ;;
  }

  dimension: rohlik_product_id_min_price {
    type: string
    sql: ${TABLE}."rohlik_product_id_min_price" ;;
  }

  dimension: rohlik_product_name_min_price {
    type: string
    sql: ${TABLE}."rohlik_product_name_min_price" ;;
  }

  measure: count {
    type: count
    drill_fields: [l3_category_name]
  }
}
