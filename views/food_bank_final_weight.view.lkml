view: food_bank_final_weight {
  sql_table_name: "WORKSPACE_233686783"."food_bank_final_weight"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: food_weight {
    type: number
    sql: ${TABLE}."food_weight" ;;
  }

  dimension: non_food_weight {
    type: number
    sql: ${TABLE}."non_food_weight" ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."product_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
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
