view: recipes_availability {
  sql_table_name: "WORKSPACE_233686783"."recipes_availability"
    ;;

  dimension: active_recipes {
    type: string
    sql: ${TABLE}."active_recipes" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."date" ;;
  }

  dimension: id_can_be_shopped {
    type: number
    sql: ${TABLE}."id_can_be_shopped" ;;
  }

  dimension: id_shopability_rc_value {
    type: number
    sql: ${TABLE}."id_shopability_rc_value" ;;
  }

  dimension: ing_shopability_rc_value {
    type: number
    sql: ${TABLE}."ing_shopability_rc_value" ;;
  }

  dimension: ingredient_can_be_shopped {
    type: number
    sql: ${TABLE}."ingredient_can_be_shopped" ;;
  }

  dimension: ingredient_name {
    type: string
    sql: ${TABLE}."ingredient_name" ;;
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

  dimension: rcp_can_be_shopped {
    type: number
    sql: ${TABLE}."rcp_can_be_shopped" ;;
  }

  dimension: rcp_shopability_rc_value {
    type: number
    sql: ${TABLE}."rcp_shopability_rc_value" ;;
  }

  dimension: recipe_name {
    type: string
    sql: ${TABLE}."recipe_name" ;;
  }

  dimension: shopability_reason_code {
    type: string
    sql: ${TABLE}."shopability_reason_code" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      recipe_name,
      ingredient_name,
      warehouse_name,
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
