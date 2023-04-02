view: loyalty_ranking_sku {
  sql_table_name: "WORKSPACE_233686783"."loyalty_ranking_SKU"
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: brand_customers_count {
    type: number
    sql: ${TABLE}."brand_customers_count" ;;
  }

  dimension: brand_customers_count_ps {
    type: number
    sql: ${TABLE}."brand_customers_count_PS" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: l2_category_name_en {
    type: string
    sql: ${TABLE}."L2_category_name_en" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."L3_category_name" ;;
  }

  dimension: l3_category_name_en {
    type: string
    sql: ${TABLE}."L3_category_name_en" ;;
  }

  dimension: l3_category_unique_id {
    type: string
    sql: ${TABLE}."L3_category_unique_id" ;;
  }

  dimension: l3_customers_count {
    type: number
    sql: ${TABLE}."l3_customers_count" ;;
  }

  dimension: l3_customers_count_ps {
    type: number
    sql: ${TABLE}."l3_customers_count_PS" ;;
  }

  dimension: loyal_customers_count {
    type: number
    sql: ${TABLE}."loyal_customers_count" ;;
  }

  dimension: loyal_customers_count_ps {
    type: number
    sql: ${TABLE}."loyal_customers_count_PS" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}."rank" ;;
  }

  dimension: rank_ps {
    type: number
    sql: ${TABLE}."rank_PS" ;;
  }

  measure: count {
    type: count
    drill_fields: [l3_category_name, name]
  }
}
