view: warehouse_inventory_from_lvl1 {
  sql_table_name: "WORKSPACE_233686783"."warehouse_inventory_from_lvl1"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}."amount" ;;
  }

  dimension: amout_in_db {
    type: string
    sql: ${TABLE}."amout_in_db" ;;
  }

  dimension: block_order_for_picking {
    type: string
    sql: ${TABLE}."block_order_for_picking" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }

  dimension: delayed_picking {
    type: string
    sql: ${TABLE}."delayed_picking" ;;
  }

  dimension: disabled_by_warehouse {
    type: string
    sql: ${TABLE}."disabled_by_warehouse" ;;
  }

  dimension: disabled_by_warehouse_at {
    type: string
    sql: ${TABLE}."disabled_by_warehouse_at" ;;
  }

  dimension: display_pack_item_id {
    type: string
    sql: ${TABLE}."display_pack_item_id" ;;
  }

  dimension: enabled {
    type: string
    sql: ${TABLE}."enabled" ;;
  }

  dimension: export_pack_items {
    type: string
    sql: ${TABLE}."export_pack_items" ;;
  }

  dimension: extra_pick_enabled {
    type: string
    sql: ${TABLE}."extra_pick_enabled" ;;
  }

  dimension: first_replenishment_at {
    type: string
    sql: ${TABLE}."first_replenishment_at" ;;
  }

  dimension: grocery_id {
    type: string
    sql: ${TABLE}."grocery_id" ;;
  }

  dimension: grocery_unique_id {
    type: string
    sql: ${TABLE}."grocery_unique_id" ;;
  }

  dimension: hiding_candidate {
    type: string
    sql: ${TABLE}."hiding_candidate" ;;
  }

  dimension: last_stock_taking {
    type: string
    sql: ${TABLE}."last_stock_taking" ;;
  }

  dimension: margin_percents {
    type: string
    sql: ${TABLE}."margin_percents" ;;
  }

  dimension: minimum_stock {
    type: string
    sql: ${TABLE}."minimum_stock" ;;
  }

  dimension: new_inventory_item_since {
    type: string
    sql: ${TABLE}."new_inventory_item_since" ;;
  }

  dimension: ordering_pack_items {
    type: string
    sql: ${TABLE}."ordering_pack_items" ;;
  }

  dimension: ordering_type {
    type: string
    sql: ${TABLE}."ordering_type" ;;
  }

  dimension: pack_items {
    type: string
    sql: ${TABLE}."pack_items" ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}."parent_id" ;;
  }

  dimension: parent_unique_id {
    type: string
    sql: ${TABLE}."parent_unique_id" ;;
  }

  dimension: prefered_pack_item_id {
    type: string
    sql: ${TABLE}."prefered_pack_item_id" ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}."price" ;;
  }

  dimension: problem_item {
    type: string
    sql: ${TABLE}."problem_item" ;;
  }

  dimension: promoted_sale {
    type: string
    sql: ${TABLE}."promoted_sale" ;;
  }

  dimension: reference_unit_type {
    type: string
    sql: ${TABLE}."reference_unit_type" ;;
  }

  dimension: sales_strategy_delta {
    type: string
    sql: ${TABLE}."sales_strategy_delta" ;;
  }

  dimension: sales_strategy_percentage {
    type: string
    sql: ${TABLE}."sales_strategy_percentage" ;;
  }

  dimension: semi_caliber_price_per_kg {
    type: string
    sql: ${TABLE}."semi_caliber_price_per_kg" ;;
  }

  dimension: stock_position_comment {
    type: string
    sql: ${TABLE}."stock_position_comment" ;;
  }

  dimension: stock_position_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."stock_position_id" ;;
  }

  dimension: stock_position_unique_id {
    type: string
    sql: ${TABLE}."stock_position_unique_id" ;;
  }

  dimension: supplied_product_id {
    type: string
    sql: ${TABLE}."supplied_product_id" ;;
  }

  dimension: supplied_product_unique_id {
    type: string
    sql: ${TABLE}."supplied_product_unique_id" ;;
  }

  dimension: supplier_id {
    type: string
    sql: ${TABLE}."supplier_id" ;;
  }

  dimension: supplier_unique_id {
    type: string
    sql: ${TABLE}."supplier_unique_id" ;;
  }

  dimension: threshold_amount {
    type: string
    sql: ${TABLE}."threshold_amount" ;;
  }

  dimension: unavailability_reason {
    type: string
    sql: ${TABLE}."unavailability_reason" ;;
  }

  dimension: unavailability_reason_till {
    type: string
    sql: ${TABLE}."unavailability_reason_till" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}."unit" ;;
  }

  dimension: unit_amount {
    type: string
    sql: ${TABLE}."unit_amount" ;;
  }

  dimension: unit_coefficient {
    type: string
    sql: ${TABLE}."unit_coefficient" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, stock_position.id]
  }
}
