view: baby_products {
  sql_table_name: "WORKSPACE_233686783"."baby_products"
    ;;

  dimension: amount {
    type: string
    sql: ${TABLE}."amount" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: deleted {
    type: string
    sql: ${TABLE}."deleted" ;;
  }

  dimension: enable {
    type: string
    sql: ${TABLE}."enable" ;;
  }

  dimension: l1_category_id {
    type: string
    sql: ${TABLE}."L1_category_id" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: l1_category_name_en {
    type: string
    sql: ${TABLE}."L1_category_name_en" ;;
  }

  dimension: l1_category_unique_id {
    type: string
    sql: ${TABLE}."L1_category_unique_id" ;;
  }

  dimension: l2_category_id {
    type: string
    sql: ${TABLE}."L2_category_id" ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}."L2_category_name" ;;
  }

  dimension: l2_category_unique_id {
    type: string
    sql: ${TABLE}."L2_category_unique_id" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}."price" ;;
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

  dimension_group: snapshot_day {
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
    sql: ${TABLE}."snapshot_day" ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}."unit" ;;
  }

  dimension: unit_coefficient {
    type: string
    sql: ${TABLE}."unit_coefficient" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_inventory_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."warehouse_inventory_id" ;;
  }

  dimension: warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."warehouse_inventory_unique_id" ;;
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
      l2_category_name,
      name,
      warehouse_name,
      l1_category_name,
      warehouse_inventory.warehouse_name,
      warehouse_inventory.id,
      warehouse_inventory.country_of_origin_name,
      warehouse_inventory.primary_supplier_name,
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
