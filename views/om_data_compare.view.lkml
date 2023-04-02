view: om_data_compare {
  sql_table_name: "WORKSPACE_233686783"."om_data_compare"
    ;;

  dimension: amount {
    type: string
    sql: ${TABLE}."amount" ;;
  }

  dimension: autoselect_pack {
    type: string
    sql: ${TABLE}."autoselect_pack" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: display_pack_item_id {
    type: string
    sql: ${TABLE}."display_pack_item_id" ;;
  }

  dimension: ean {
    type: string
    sql: ${TABLE}."ean" ;;
  }

  dimension: ean_per_logistics {
    type: string
    sql: ${TABLE}."ean_per_logistics" ;;
  }

  dimension: inventory_id {
    type: string
    sql: ${TABLE}."inventory_id" ;;
  }

  dimension: inventory_unique_id {
    type: string
    sql: ${TABLE}."inventory_unique_id" ;;
  }

  dimension: is_display_pack_item {
    type: string
    sql: ${TABLE}."is_display_pack_item" ;;
  }

  dimension: is_prefered_pack_item {
    type: string
    sql: ${TABLE}."is_prefered_pack_item" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: pieces_in_pack_type_carton {
    type: string
    sql: ${TABLE}."pieces_in_pack_type_carton" ;;
  }

  dimension: pieces_per_logistics {
    type: number
    sql: ${TABLE}."pieces_per_logistics" ;;
  }

  dimension: prefered_pack_item_id {
    type: string
    sql: ${TABLE}."prefered_pack_item_id" ;;
  }

  dimension: primary_supplier_id {
    type: string
    sql: ${TABLE}."primary_supplier_id" ;;
  }

  dimension: primary_supplier_name {
    type: string
    sql: ${TABLE}."primary_supplier_name" ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."product_id" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
  }

  dimension: responsible_disponent {
    type: string
    sql: ${TABLE}."responsible_disponent" ;;
  }

  dimension: round_percentage {
    type: number
    sql: ${TABLE}."round_percentage" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
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
      warehouse_name,
      product_name,
      primary_supplier_name,
      l1_category_name,
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
