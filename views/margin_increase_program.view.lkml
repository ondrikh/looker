view: margin_increase_program {
  sql_table_name: "WORKSPACE_233686783"."margin_increase_program"
    ;;

  dimension: action_price {
    type: number
    sql: ${TABLE}."action_price" ;;
  }

  dimension: actual_price {
    type: number
    sql: ${TABLE}."actual_price" ;;
  }

  dimension: availability {
    type: number
    sql: ${TABLE}."availability" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."date" ;;
  }

  dimension: gr {
    type: number
    sql: ${TABLE}."GR" ;;
  }

  dimension: gross_cogs {
    type: number
    sql: ${TABLE}."gross_COGS" ;;
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

  dimension: net_cogs {
    type: number
    sql: ${TABLE}."net_COGS" ;;
  }

  dimension: net_cogs_with_bonus {
    type: number
    sql: ${TABLE}."net_COGS_with_bonus" ;;
  }

  dimension: nr {
    type: number
    sql: ${TABLE}."NR" ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}."orders" ;;
  }

  dimension: packages {
    type: number
    sql: ${TABLE}."packages" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."price" ;;
  }

  dimension: price_change {
    type: string
    sql: ${TABLE}."price_change" ;;
  }

  dimension: pricing_group {
    type: string
    sql: ${TABLE}."pricing_group" ;;
  }

  dimension: pricing_kvi {
    type: string
    sql: ${TABLE}."pricing_kvi" ;;
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

  dimension: role_categorisation {
    type: string
    sql: ${TABLE}."role_categorisation" ;;
  }

  dimension: shrink_reason {
    type: string
    sql: ${TABLE}."shrink_reason" ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}."transaction_type" ;;
  }

  dimension: transactions_actions_reason {
    type: string
    sql: ${TABLE}."transactions_actions_reason" ;;
  }

  dimension: transactions_actions_type {
    type: string
    sql: ${TABLE}."transactions_actions_type" ;;
  }

  dimension: transactions_type {
    type: string
    sql: ${TABLE}."transactions_type" ;;
  }

  dimension: upload_to_tableau {
    type: string
    sql: ${TABLE}."upload_to_tableau" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
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
    drill_fields: [product_name, warehouse_name, l2_category_name, l3_category_name, l1_category_name]
  }
}
