view: negative_margin_report {
  sql_table_name: "WORKSPACE_233686783"."negative_margin_report"
    ;;

  dimension: action_buy_price_excl_vat {
    type: number
    sql: ${TABLE}."action_buy_price_excl_vat" ;;
  }

  dimension: action_price_excl_vat {
    type: number
    sql: ${TABLE}."action_price_excl_vat" ;;
  }

  dimension: action_price_incl_vat {
    type: number
    sql: ${TABLE}."action_price_incl_vat" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: buy_price_excl_vat {
    type: number
    sql: ${TABLE}."buy_price_excl_vat" ;;
  }

  dimension: competitor_1_price {
    type: number
    sql: ${TABLE}."competitor_1_price" ;;
  }

  dimension: competitor_2_price {
    type: number
    sql: ${TABLE}."competitor_2_price" ;;
  }

  dimension: competitor_3_price {
    type: number
    sql: ${TABLE}."competitor_3_price" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: is_automated {
    type: string
    sql: ${TABLE}."is_automated" ;;
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

  dimension: margin {
    type: number
    sql: ${TABLE}."margin" ;;
  }

  dimension: margin_action {
    type: number
    sql: ${TABLE}."margin_action" ;;
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

  dimension: pricing_group {
    type: string
    sql: ${TABLE}."pricing_group" ;;
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

  dimension: sell_price_excl_vat {
    type: number
    sql: ${TABLE}."sell_price_excl_vat" ;;
  }

  dimension: sell_price_incl_vat {
    type: number
    sql: ${TABLE}."sell_price_incl_vat" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: tax_percentage {
    type: number
    sql: ${TABLE}."tax_percentage" ;;
  }

  dimension: warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."warehouse_inventory_unique_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      product_name,
      supplier_name,
      l2_category_name,
      l1_category_name,
      warehouse_name,
      l3_category_name
    ]
  }
}
