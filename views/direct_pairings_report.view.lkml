view: direct_pairings_report {
  sql_table_name: "WORKSPACE_233686783"."direct_pairings_report"
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: competitor_name {
    type: string
    sql: ${TABLE}."competitor_name" ;;
  }

  dimension: competitor_price {
    type: number
    sql: ${TABLE}."competitor_price" ;;
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

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
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

  dimension: price_index {
    type: number
    sql: ${TABLE}."price_index" ;;
  }

  dimension: price_multiplier {
    type: number
    sql: ${TABLE}."price_multiplier" ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."product_id" ;;
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

  dimension: rohlik_price {
    type: number
    sql: ${TABLE}."rohlik_price" ;;
  }

  dimension: rohlik_product_name {
    type: string
    sql: ${TABLE}."rohlik_product_name" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      l1_category_name,
      competitor_product_name,
      rohlik_product_name,
      l3_category_name,
      competitor_name,
      warehouse_name,
      l2_category_name,
      product.name,
      product.l2_category_name,
      product.product_family_name,
      product.l4_category_name,
      product.id,
      product.l5_category_name,
      product.l1_category_name,
      product.l3_category_name
    ]
  }
}
