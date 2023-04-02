view: pricing_policy_snapshot {
  sql_table_name: "WORKSPACE_233686783"."pricing_policy_snapshot"
    ;;

  dimension: action_price {
    type: number
    sql: ${TABLE}."action_price" ;;
  }

  dimension: all_competitors_paired {
    type: string
    sql: ${TABLE}."all_competitors_paired" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: competitor_1 {
    type: string
    sql: ${TABLE}."competitor_1" ;;
  }

  dimension: competitor_1_pairing_product_name {
    type: string
    sql: ${TABLE}."competitor_1_pairing_product_name" ;;
  }

  dimension: competitor_1_price {
    type: number
    sql: ${TABLE}."competitor_1_price" ;;
  }

  dimension: competitor_1_price_multiplier_prime_or_direct {
    type: number
    sql: ${TABLE}."competitor_1_price_multiplier_prime_or_direct" ;;
  }

  dimension: competitor_1_prime_or_direct {
    type: string
    sql: ${TABLE}."competitor_1_prime_or_direct" ;;
  }

  dimension: competitor_1_prime_or_direct_price {
    type: number
    sql: ${TABLE}."competitor_1_prime_or_direct_price" ;;
  }

  dimension: competitor_1_prime_pairing_product_name {
    type: string
    sql: ${TABLE}."competitor_1_prime_pairing_product_name" ;;
  }

  dimension: competitor_1_prime_price {
    type: number
    sql: ${TABLE}."competitor_1_prime_price" ;;
  }

  dimension: competitor_2 {
    type: string
    sql: ${TABLE}."competitor_2" ;;
  }

  dimension: competitor_2_pairing_product_name {
    type: string
    sql: ${TABLE}."competitor_2_pairing_product_name" ;;
  }

  dimension: competitor_2_price {
    type: number
    sql: ${TABLE}."competitor_2_price" ;;
  }

  dimension: competitor_2_price_multiplier_prime_or_direct {
    type: number
    sql: ${TABLE}."competitor_2_price_multiplier_prime_or_direct" ;;
  }

  dimension: competitor_2_prime_or_direct {
    type: string
    sql: ${TABLE}."competitor_2_prime_or_direct" ;;
  }

  dimension: competitor_2_prime_or_direct_price {
    type: number
    sql: ${TABLE}."competitor_2_prime_or_direct_price" ;;
  }

  dimension: competitor_2_prime_pairing_product_name {
    type: string
    sql: ${TABLE}."competitor_2_prime_pairing_product_name" ;;
  }

  dimension: competitor_2_prime_price {
    type: number
    sql: ${TABLE}."competitor_2_prime_price" ;;
  }

  dimension: competitor_3 {
    type: string
    sql: ${TABLE}."competitor_3" ;;
  }

  dimension: competitor_3_pairing_product_name {
    type: string
    sql: ${TABLE}."competitor_3_pairing_product_name" ;;
  }

  dimension: competitor_3_price {
    type: number
    sql: ${TABLE}."competitor_3_price" ;;
  }

  dimension: competitor_3_price_multiplier_prime_or_direct {
    type: number
    sql: ${TABLE}."competitor_3_price_multiplier_prime_or_direct" ;;
  }

  dimension: competitor_3_prime_or_direct {
    type: string
    sql: ${TABLE}."competitor_3_prime_or_direct" ;;
  }

  dimension: competitor_3_prime_or_direct_price {
    type: number
    sql: ${TABLE}."competitor_3_prime_or_direct_price" ;;
  }

  dimension: competitor_3_prime_pairing_product_name {
    type: string
    sql: ${TABLE}."competitor_3_prime_pairing_product_name" ;;
  }

  dimension: competitor_3_prime_price {
    type: number
    sql: ${TABLE}."competitor_3_prime_price" ;;
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

  dimension: enabled {
    type: string
    sql: ${TABLE}."enabled" ;;
  }

  dimension: exclude_from_red_pis {
    type: string
    sql: ${TABLE}."exclude_from_red_PIs" ;;
  }

  dimension: ic_paired {
    type: string
    sql: ${TABLE}."IC_paired" ;;
  }

  dimension_group: ic_pairing_created {
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
    sql: ${TABLE}."IC_pairing_created_at" ;;
  }

  dimension: kvi {
    type: string
    sql: ${TABLE}."kvi" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}."L2_category_name" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."L3_category_name" ;;
  }

  dimension: net_cogs_last_30 {
    type: number
    sql: ${TABLE}."net_COGS_last_30" ;;
  }

  dimension: nr_last_30 {
    type: number
    sql: ${TABLE}."NR_last_30" ;;
  }

  dimension: packages_last_30 {
    type: number
    sql: ${TABLE}."packages_last_30" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."price" ;;
  }

  dimension: price_index_competitor_1 {
    type: number
    sql: ${TABLE}."price_index_competitor_1" ;;
  }

  dimension: price_index_competitor_1_prime_or_direct {
    type: number
    sql: ${TABLE}."price_index_competitor_1_prime_or_direct" ;;
  }

  dimension: price_index_competitor_2 {
    type: number
    sql: ${TABLE}."price_index_competitor_2" ;;
  }

  dimension: price_index_competitor_2_prime_or_direct {
    type: number
    sql: ${TABLE}."price_index_competitor_2_prime_or_direct" ;;
  }

  dimension: price_index_competitor_3 {
    type: number
    sql: ${TABLE}."price_index_competitor_3" ;;
  }

  dimension: price_index_competitor_3_prime_or_direct {
    type: number
    sql: ${TABLE}."price_index_competitor_3_prime_or_direct" ;;
  }

  dimension: price_multiplier_competitor_1 {
    type: number
    sql: ${TABLE}."price_multiplier_competitor_1" ;;
  }

  dimension: price_multiplier_competitor_2 {
    type: number
    sql: ${TABLE}."price_multiplier_competitor_2" ;;
  }

  dimension: price_multiplier_competitor_3 {
    type: number
    sql: ${TABLE}."price_multiplier_competitor_3" ;;
  }

  dimension: price_multiplier_prime_competitor_1 {
    type: number
    sql: ${TABLE}."price_multiplier_prime_competitor_1" ;;
  }

  dimension: price_multiplier_prime_competitor_2 {
    type: number
    sql: ${TABLE}."price_multiplier_prime_competitor_2" ;;
  }

  dimension: price_multiplier_prime_competitor_3 {
    type: number
    sql: ${TABLE}."price_multiplier_prime_competitor_3" ;;
  }

  dimension: pricing_group {
    type: string
    sql: ${TABLE}."pricing_group" ;;
  }

  dimension: prime_price_index_competitor_1 {
    type: number
    sql: ${TABLE}."prime_price_index_competitor_1" ;;
  }

  dimension: prime_price_index_competitor_2 {
    type: number
    sql: ${TABLE}."prime_price_index_competitor_2" ;;
  }

  dimension: prime_price_index_competitor_3 {
    type: number
    sql: ${TABLE}."prime_price_index_competitor_3" ;;
  }

  dimension: prime_product_unique_id {
    type: string
    sql: ${TABLE}."prime_product_unique_id" ;;
  }

  dimension: product_level {
    type: string
    sql: ${TABLE}."product_level" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: responsible_user {
    type: string
    sql: ${TABLE}."responsible_user" ;;
  }

  dimension: responsible_user_senior {
    type: string
    sql: ${TABLE}."responsible_user_senior" ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}."snapshot_date" ;;
  }

  dimension: target_index_ic {
    type: number
    sql: ${TABLE}."target_index_IC" ;;
  }

  dimension: target_index_non_ic {
    type: number
    sql: ${TABLE}."target_index_NON_IC" ;;
  }

  dimension: tax_percentage {
    type: number
    sql: ${TABLE}."tax_percentage" ;;
  }

  dimension: transactions_sum_net_cogs_with_bonus_last_30 {
    type: number
    sql: ${TABLE}."transactions_sum_net_COGS_with_bonus_last_30" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      competitor_2_pairing_product_name,
      product_name,
      l1_category_name,
      competitor_3_pairing_product_name,
      competitor_2_prime_pairing_product_name,
      competitor_3_prime_pairing_product_name,
      l2_category_name,
      competitor_1_prime_pairing_product_name,
      l3_category_name,
      competitor_1_pairing_product_name
    ]
  }
}
