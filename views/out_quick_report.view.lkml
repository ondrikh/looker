view: out_quick_report {
  sql_table_name: "WORKSPACE_233686783"."out_quick_report"
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

  dimension: deleted {
    type: string
    sql: ${TABLE}."deleted" ;;
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

  dimension: packages_last_30 {
    type: number
    sql: ${TABLE}."Packages_last_30" ;;
  }

  dimension: transactions_sum_net_cogs_with_bonus_last_30 {
    type: number
    sql: ${TABLE}."transactions_sum_net_COGS_with_bonus_last_30" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
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
      competitor_product_name,
      l3_category_name,
      l1_category_name
    ]
  }
}
