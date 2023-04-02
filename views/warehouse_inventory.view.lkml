view: warehouse_inventory {
  sql_table_name: "WORKSPACE_233686783"."warehouse_inventory"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: action_price {
    type: number
    sql: ${TABLE}."action_price" ;;
  }

  dimension: actual_price {
    type: number
    sql: ${TABLE}."actual_price" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."amount" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: country_of_origin {
    type: string
    sql: ${TABLE}."country_of_origin" ;;
  }

  dimension: country_of_origin_name {
    type: string
    sql: ${TABLE}."country_of_origin_name" ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }

  dimension: enabled {
    type: string
    sql: ${TABLE}."enabled" ;;
  }

  dimension: essential {
    type: string
    sql: ${TABLE}."essential" ;;
  }

  dimension_group: first_replenishment {
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
    sql: ${TABLE}."first_replenishment_at" ;;
  }

  dimension: flow_type {
    type: string
    sql: ${TABLE}."flow_type" ;;
  }

  dimension: hiding_candidate {
    type: string
    sql: ${TABLE}."hiding_candidate" ;;
  }

  dimension: kpi_excluded {
    type: string
    sql: ${TABLE}."kpi_excluded" ;;
  }

  dimension_group: last_replenishment {
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
    sql: ${TABLE}."last_replenishment_at" ;;
  }

  dimension: never_oos {
    type: string
    sql: ${TABLE}."never_oos" ;;
  }

  dimension: new_item {
    type: string
    sql: ${TABLE}."new_item" ;;
  }

  dimension: pack_items {
    type: number
    sql: ${TABLE}."pack_items" ;;
  }

  dimension: physical_amount {
    type: number
    sql: ${TABLE}."physical_amount" ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}."position" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."price" ;;
  }

  dimension: primary_supplier_dic {
    type: string
    sql: ${TABLE}."primary_supplier_dic" ;;
  }

  dimension: primary_supplier_id {
    type: string
    sql: ${TABLE}."primary_supplier_id" ;;
  }

  dimension: primary_supplier_menu_code {
    type: string
    sql: ${TABLE}."primary_supplier_menu_code" ;;
  }

  dimension: primary_supplier_name {
    type: string
    sql: ${TABLE}."primary_supplier_name" ;;
  }

  dimension: problem_item {
    type: string
    sql: ${TABLE}."problem_item" ;;
  }

  dimension: product_action_reason {
    type: string
    sql: ${TABLE}."product_action_reason" ;;
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

  dimension: seasonal_adjustment {
    type: string
    sql: ${TABLE}."seasonal_adjustment" ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}."sector" ;;
  }

  dimension: semi_caliber_price_per_kg {
    type: number
    sql: ${TABLE}."semi_caliber_price_per_kg" ;;
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

  dimension: tax_percentage {
    type: number
    sql: ${TABLE}."tax_percentage" ;;
  }

  dimension: unavailability_reason {
    type: string
    sql: ${TABLE}."unavailability_reason" ;;
  }

  dimension_group: unavailability_reason_till {
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

  dimension: unit_buy_price_excl_vat {
    type: number
    sql: ${TABLE}."unit_buy_price_excl_vat" ;;
  }

  dimension: unit_coefficient {
    type: string
    sql: ${TABLE}."unit_coefficient" ;;
  }

  dimension: vendor_pack_items {
    type: number
    sql: ${TABLE}."vendor_pack_items" ;;
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
      id,
      warehouse_name,
      country_of_origin_name,
      primary_supplier_name,
      stock_position.id,
      product.name,
      product.l2_category_name,
      product.product_family_name,
      product.l4_category_name,
      product.id,
      product.l5_category_name,
      product.l1_category_name,
      product.l3_category_name,
      actions_reporting.count,
      aggregated_availability_by_product_and_date.count,
      aggregated_available_item_and_transaction_last_30_days.count,
      aggregated_transaction.count,
      aggregated_transaction_in_last_30_days.count,
      aggregated_transaction_pricing_test.count,
      aggregated_warehouse_inventory_monthly.count,
      all_actions.count,
      available_item_snapshot_filtered.count,
      available_items_hourly.count,
      baby_products.count,
      commercial_bonus.count,
      commercial_bonuses_inventory_associations.count,
      commercial_order_item.count,
      nb_shelf_report.count,
      order_fields_pharmacy.count,
      order_to_pick_last_30d.count,
      picking_item.count,
      pilot_assortment.count,
      price_history.count,
      product_split_abc.count,
      received_item.count,
      shrinkage.count,
      staging604a0ee1d21fc.count,
      staging60d099c2acd3e.count,
      staging60d2d1b69651e.count,
      staging6143f5dcdc28e.count,
      staging61c427f894de6.count,
      staging61cc8647d6fc1.count,
      staging61e56f3222fa9.count,
      staging6254014137858.count,
      staging6254018976a34.count,
      staging6271b07ba0be6.count,
      staging63bd61259cfd8.count,
      staging63bd612a0e686.count,
      staging63bd612b3f18c.count,
      staging6419af31677bb.count,
      tool_datasource.count,
      warehouse_inventory_snapshot.count,
      warehouse_inventory_snapshot_filtered.count,
      warehouse_stock_position_value.count,
      warehouse_stock_position_value_snapshot.count,
      warranty_claim_product.count
    ]
  }
}
