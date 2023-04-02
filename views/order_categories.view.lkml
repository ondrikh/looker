view: order_categories {
  sql_table_name: "WORKSPACE_233686783"."order_categories"
    ;;

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."l1_category_name" ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}."l2_category_name" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."l3_category_name" ;;
  }

  dimension: master_order_unique_id {
    type: string
    sql: ${TABLE}."master_order_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [l2_category_name, l1_category_name, l3_category_name]
  }
}
