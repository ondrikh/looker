view: product_categories_layout_ab_test {
  sql_table_name: "WORKSPACE_233686783"."product_categories_layout_ab_test"
    ;;

  dimension: aov_all_sources {
    type: number
    sql: ${TABLE}."aov_all_sources" ;;
  }

  dimension: aov_product_category {
    type: number
    sql: ${TABLE}."aov_product_category" ;;
  }

  dimension: avg_l2_all_sources {
    type: number
    sql: ${TABLE}."avg_L2_all_sources" ;;
  }

  dimension: avg_l2_product_category {
    type: number
    sql: ${TABLE}."avg_L2_product_category" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}."customer_type" ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}."group_name" ;;
  }

  dimension: nr_sum_all_sources {
    type: number
    sql: ${TABLE}."nr_sum_all_sources" ;;
  }

  dimension: nr_sum_product_category {
    type: number
    sql: ${TABLE}."nr_sum_product_category" ;;
  }

  dimension: number_of_customers_all_sources {
    type: number
    sql: ${TABLE}."number_of_customers_all_sources" ;;
  }

  dimension: number_of_customers_product_category {
    type: number
    sql: ${TABLE}."number_of_customers_product_category" ;;
  }

  dimension: number_of_orders_all_sources {
    type: number
    sql: ${TABLE}."number_of_orders_all_sources" ;;
  }

  dimension: number_of_orders_product_category {
    type: number
    sql: ${TABLE}."number_of_orders_product_category" ;;
  }

  dimension: order_date {
    type: string
    sql: ${TABLE}."order_date" ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name]
  }
}
