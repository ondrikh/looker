view: product {
  sql_table_name: "WORKSPACE_233686783"."product"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: bio_product_tag {
    type: string
    sql: ${TABLE}."bio_product_tag" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: brand_id {
    type: string
    sql: ${TABLE}."brand_id" ;;
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

  dimension: delist_reason {
    type: string
    sql: ${TABLE}."delist_reason" ;;
  }

  dimension_group: delisted {
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
    sql: ${TABLE}."delisted_at" ;;
  }

  dimension: delisting_candidate {
    type: string
    sql: ${TABLE}."delisting_candidate" ;;
  }

  dimension: depth {
    type: string
    sql: ${TABLE}."depth" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: durability_days {
    type: string
    sql: ${TABLE}."durability_days" ;;
  }

  dimension: durability_guarantee {
    type: string
    sql: ${TABLE}."durability_guarantee" ;;
  }

  dimension: food_product_tag {
    type: string
    sql: ${TABLE}."food_product_tag" ;;
  }

  dimension: has_weight_variations {
    type: string
    sql: ${TABLE}."has_weight_variations" ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}."height" ;;
  }

  dimension: id_delivery_category {
    type: string
    sql: ${TABLE}."id_delivery_category" ;;
  }

  dimension: image {
    type: string
    sql: ${TABLE}."image" ;;
  }

  dimension: ingredients {
    type: string
    sql: ${TABLE}."ingredients" ;;
  }

  dimension: item_ean {
    type: string
    sql: ${TABLE}."item_ean" ;;
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

  dimension: l2_category_name_en {
    type: string
    sql: ${TABLE}."L2_category_name_en" ;;
  }

  dimension: l2_category_unique_id {
    type: string
    sql: ${TABLE}."L2_category_unique_id" ;;
  }

  dimension: l3_category_id {
    type: string
    sql: ${TABLE}."L3_category_id" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."L3_category_name" ;;
  }

  dimension: l3_category_name_en {
    type: string
    sql: ${TABLE}."L3_category_name_en" ;;
  }

  dimension: l3_category_unique_id {
    type: string
    sql: ${TABLE}."L3_category_unique_id" ;;
  }

  dimension: l4_category_id {
    type: string
    sql: ${TABLE}."L4_category_id" ;;
  }

  dimension: l4_category_name {
    type: string
    sql: ${TABLE}."L4_category_name" ;;
  }

  dimension: l4_category_name_en {
    type: string
    sql: ${TABLE}."L4_category_name_en" ;;
  }

  dimension: l5_category_id {
    type: string
    sql: ${TABLE}."L5_category_id" ;;
  }

  dimension: l5_category_name {
    type: string
    sql: ${TABLE}."L5_category_name" ;;
  }

  dimension: l5_category_name_en {
    type: string
    sql: ${TABLE}."L5_category_name_en" ;;
  }

  dimension: last_minute_length {
    type: string
    sql: ${TABLE}."last_minute_length" ;;
  }

  dimension: level {
    type: string
    sql: ${TABLE}."level" ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}."manufacturer" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: name_en {
    type: string
    sql: ${TABLE}."name_en" ;;
  }

  dimension: notbag_product_tag {
    type: string
    sql: ${TABLE}."notbag_product_tag" ;;
  }

  dimension: pack_ean {
    type: string
    sql: ${TABLE}."pack_ean" ;;
  }

  dimension: product_family_coefficient {
    type: string
    sql: ${TABLE}."product_family_coefficient" ;;
  }

  dimension: product_family_name {
    type: string
    sql: ${TABLE}."product_family_name" ;;
  }

  dimension: product_family_product_rank {
    type: string
    sql: ${TABLE}."product_family_product_rank" ;;
  }

  dimension: search_keywords {
    type: string
    sql: ${TABLE}."search_keywords" ;;
  }

  dimension: special_picking_type {
    type: string
    sql: ${TABLE}."special_picking_type" ;;
  }

  dimension: storage {
    type: string
    sql: ${TABLE}."storage" ;;
  }

  dimension: tax_percentage {
    type: string
    sql: ${TABLE}."tax_percentage" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}."unit" ;;
  }

  dimension: units_in_kg {
    type: number
    sql: ${TABLE}."units_in_kg" ;;
  }

  dimension: usage {
    type: string
    sql: ${TABLE}."usage" ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}."weight" ;;
  }

  dimension: width {
    type: string
    sql: ${TABLE}."width" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      l2_category_name,
      product_family_name,
      l4_category_name,
      l5_category_name,
      l1_category_name,
      l3_category_name,
      pis_internal_metrics_backup_report.count,
      actions_reporting.count,
      baby_products.count,
      batch_camp_analysis_product_level.count,
      batch_campaign_self_service_evaluation.count,
      com_order_pick_position.count,
      combined_supplier_ads.count,
      commercial_order_item.count,
      delivery_conditions_future.count,
      direct_pairings_report.count,
      finance_supplier_invoice_items.count,
      food_bank_final_weight.count,
      food_collection_ukraine.count,
      homepage_product_order.count,
      items_evaluation_last.count,
      mobile_camp_analysis_product_level.count,
      mobile_campaign_self_service_evaluation.count,
      om_data_compare.count,
      order_fields_pharmacy.count,
      order_to_pick_last_30d.count,
      penetrations_sku_level.count,
      personalization_reporting_insp_belt.count,
      pilot_assortment.count,
      price_history.count,
      product_split_abc.count,
      recipes_availability.count,
      sailthrou_ad_hoc_flow_prodcut_level.count,
      sailthrou_ad_hoc_flow_product_level.count,
      sbirka_potravin_jaro_2022_vahy.count,
      staging61dd9c1f826c7.count,
      staging6271b07ba0be6.count,
      staging63bd6126dfb6d.count,
      staging63bd612b3f18c.count,
      staging6419af31677bb.count,
      supplier_reliability.count,
      target_control_self_service_evaluation.count,
      warehouse_inventory.count,
      warehouse_inventory_snapshot.count,
      warehouse_inventory_snapshot_filtered.count,
      warehouse_stock_position_value.count,
      warehouse_stock_position_value_snapshot.count
    ]
  }
}
