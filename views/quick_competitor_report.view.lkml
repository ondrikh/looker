view: quick_competitor_report {
  sql_table_name: "WORKSPACE_233686783"."quick_competitor_report"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: brand_id {
    type: string
    sql: ${TABLE}."brand_id" ;;
  }

  dimension: competitor {
    type: string
    sql: ${TABLE}."competitor" ;;
  }

  dimension: competitor_external_unique_id {
    type: string
    sql: ${TABLE}."competitor_external_unique_id" ;;
  }

  dimension: competitor_price {
    type: number
    sql: ${TABLE}."competitor_price" ;;
  }

  dimension: competitor_product_name {
    type: string
    sql: ${TABLE}."competitor_product_name" ;;
  }

  dimension: competitor_sale_price {
    type: number
    sql: ${TABLE}."competitor_sale_price" ;;
  }

  dimension: competitor_sale_unit_price {
    type: number
    sql: ${TABLE}."competitor_sale_unit_price" ;;
  }

  dimension_group: competitor_sale_until {
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
    sql: ${TABLE}."competitor_sale_until" ;;
  }

  dimension: competitor_unit_price {
    type: number
    sql: ${TABLE}."competitor_unit_price" ;;
  }

  dimension: competitor_updated_at {
    type: string
    sql: ${TABLE}."competitor_updated_at" ;;
  }

  dimension: competitor_url {
    type: string
    sql: ${TABLE}."competitor_url" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: deep_category_id {
    type: string
    sql: ${TABLE}."deep_category_id" ;;
  }

  dimension: deep_category_unique_id {
    type: string
    sql: ${TABLE}."deep_category_unique_id" ;;
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

  dimension: l1_category_name_en_unified {
    type: string
    sql: ${TABLE}."L1_category_name_en_unified" ;;
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

  dimension: l2_category_name_en_unified {
    type: string
    sql: ${TABLE}."L2_category_name_en_unified" ;;
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

  dimension: l4_category_unique_id {
    type: string
    sql: ${TABLE}."L4_category_unique_id" ;;
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

  dimension: l5_category_unique_id {
    type: string
    sql: ${TABLE}."L5_category_unique_id" ;;
  }

  dimension: l6_category_id {
    type: string
    sql: ${TABLE}."L6_category_id" ;;
  }

  dimension: l6_category_name {
    type: string
    sql: ${TABLE}."L6_category_name" ;;
  }

  dimension: l6_category_name_en {
    type: string
    sql: ${TABLE}."L6_category_name_en" ;;
  }

  dimension: l6_category_unique_id {
    type: string
    sql: ${TABLE}."L6_category_unique_id" ;;
  }

  dimension: l7_category_id {
    type: string
    sql: ${TABLE}."L7_category_id" ;;
  }

  dimension: l7_category_name {
    type: string
    sql: ${TABLE}."L7_category_name" ;;
  }

  dimension: l7_category_name_en {
    type: string
    sql: ${TABLE}."L7_category_name_en" ;;
  }

  dimension: l7_category_unique_id {
    type: string
    sql: ${TABLE}."L7_category_unique_id" ;;
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

  dimension: net_cogs_last_30 {
    type: number
    sql: ${TABLE}."Net_COGS_last_30" ;;
  }

  dimension: nr_last_30 {
    type: number
    sql: ${TABLE}."NR_last_30" ;;
  }

  dimension: pack_ean {
    type: string
    sql: ${TABLE}."pack_ean" ;;
  }

  dimension: packages_last_30 {
    type: number
    sql: ${TABLE}."Packages_last_30" ;;
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
    type: number
    sql: ${TABLE}."tax_percentage" ;;
  }

  dimension: transactions_sum_net_cogs_with_bonus_last_30 {
    type: number
    sql: ${TABLE}."transactions_sum_net_COGS_with_bonus_last_30" ;;
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
    type: string
    sql: ${TABLE}."units_in_kg" ;;
  }

  dimension: usage {
    type: string
    sql: ${TABLE}."usage" ;;
  }

  dimension: weight {
    type: string
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
      l6_category_name,
      l7_category_name,
      competitor_product_name,
      l5_category_name,
      l3_category_name,
      l1_category_name,
      l2_category_name,
      product_family_name,
      l4_category_name
    ]
  }
}
