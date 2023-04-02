view: staging6419af31677bb {
  sql_table_name: "WORKSPACE_233686783"."staging6419af31677bb"
    ;;

  dimension: action_price {
    type: string
    sql: ${TABLE}."action_price" ;;
  }

  dimension: actual_price {
    type: string
    sql: ${TABLE}."actual_price" ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}."amount" ;;
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

  dimension: delisting_candidate {
    type: string
    sql: ${TABLE}."delisting_candidate" ;;
  }

  dimension: enable {
    type: string
    sql: ${TABLE}."enable" ;;
  }

  dimension: essential {
    type: string
    sql: ${TABLE}."essential" ;;
  }

  dimension: hiding_candidate {
    type: string
    sql: ${TABLE}."hiding_candidate" ;;
  }

  dimension: kpi_excluded {
    type: string
    sql: ${TABLE}."kpi_excluded" ;;
  }

  dimension: never_oos {
    type: number
    sql: ${TABLE}."never_oos" ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}."position" ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}."price" ;;
  }

  dimension: problem_item {
    type: string
    sql: ${TABLE}."problem_item" ;;
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

  dimension: responsible_disponent {
    type: string
    sql: ${TABLE}."responsible_disponent" ;;
  }

  dimension: responsible_user {
    type: string
    sql: ${TABLE}."responsible_user" ;;
  }

  dimension: responsible_user_senior {
    type: string
    sql: ${TABLE}."responsible_user_senior" ;;
  }

  dimension: sales_strategy_delta {
    type: string
    sql: ${TABLE}."sales_strategy_delta" ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}."sector" ;;
  }

  dimension: snapshot_id {
    type: string
    sql: ${TABLE}."snapshot_id" ;;
  }

  dimension: tax_percentage {
    type: string
    sql: ${TABLE}."tax_percentage" ;;
  }

  dimension: timestamp {
    type: string
    sql: ${TABLE}."timestamp" ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}."unit" ;;
  }

  dimension: unit_buy_price_excl_vat {
    type: number
    sql: ${TABLE}."unit_buy_price_excl_vat" ;;
  }

  dimension: unit_coefficient {
    type: string
    sql: ${TABLE}."unit_coefficient" ;;
  }

  dimension: unit_coefficient_unified {
    type: number
    sql: ${TABLE}."unit_coefficient_unified" ;;
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
      warehouse_name,
      product.name,
      product.l2_category_name,
      product.product_family_name,
      product.l4_category_name,
      product.id,
      product.l5_category_name,
      product.l1_category_name,
      product.l3_category_name,
      warehouse_inventory.warehouse_name,
      warehouse_inventory.id,
      warehouse_inventory.country_of_origin_name,
      warehouse_inventory.primary_supplier_name
    ]
  }
}
