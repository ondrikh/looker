view: penetrations_sku_level {
  sql_table_name: "WORKSPACE_233686783"."penetrations_sku_level"
    ;;

  dimension: basket_penetration {
    type: number
    sql: ${TABLE}."basket_penetration" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: customer_penetration {
    type: number
    sql: ${TABLE}."customer_penetration" ;;
  }

  dimension_group: eom {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."EOM" ;;
  }

  dimension: id_orders {
    type: string
    sql: ${TABLE}."id_orders" ;;
  }

  dimension: id_users {
    type: string
    sql: ${TABLE}."id_users" ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."product_ID" ;;
  }

  dimension: supplier_id {
    type: string
    sql: ${TABLE}."supplier_id" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: total_orders {
    type: number
    sql: ${TABLE}."total_orders" ;;
  }

  dimension: total_users {
    type: number
    sql: ${TABLE}."total_users" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      supplier_name,
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
