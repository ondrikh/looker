view: supplier_scorecard {
  sql_table_name: "WORKSPACE_233686783"."supplier_scorecard"
    ;;

  dimension: act_selling_price {
    type: number
    sql: ${TABLE}."act_selling_price" ;;
  }

  dimension: availability {
    type: number
    sql: ${TABLE}."availability" ;;
  }

  dimension: avg_selling_price_incl_vat {
    type: number
    sql: ${TABLE}."avg_selling_price_incl_vat" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: credit_note_bonus_ly {
    type: number
    sql: ${TABLE}."credit_note_bonus_LY" ;;
  }

  dimension: credit_note_bonus_ty {
    type: number
    sql: ${TABLE}."credit_note_bonus_TY" ;;
  }

  dimension: currencies_id {
    type: string
    sql: ${TABLE}."currencies_id" ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }

  dimension: deleted {
    type: string
    sql: ${TABLE}."deleted" ;;
  }

  dimension: delisted {
    type: string
    sql: ${TABLE}."delisted" ;;
  }

  dimension: enabled {
    type: string
    sql: ${TABLE}."enabled" ;;
  }

  dimension_group: eom {
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
    sql: ${TABLE}."EOM" ;;
  }

  dimension: essential {
    type: string
    sql: ${TABLE}."essential" ;;
  }

  dimension: hidden {
    type: string
    sql: ${TABLE}."hidden" ;;
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

  dimension: l4_category_name {
    type: string
    sql: ${TABLE}."L4_category_name" ;;
  }

  dimension: l5_category_name {
    type: string
    sql: ${TABLE}."L5_category_name" ;;
  }

  dimension: last_buying_price {
    type: number
    sql: ${TABLE}."last_buying_price" ;;
  }

  dimension: last_buying_price_promo {
    type: number
    sql: ${TABLE}."last_buying_price_promo" ;;
  }

  dimension: last_minute_net_cogs_ly {
    type: number
    sql: ${TABLE}."last_minute_net_cogs_LY" ;;
  }

  dimension: last_minute_net_cogs_ty {
    type: number
    sql: ${TABLE}."last_minute_net_cogs_TY" ;;
  }

  dimension: last_minute_net_revenue_ly {
    type: number
    sql: ${TABLE}."last_minute_net_revenue_LY" ;;
  }

  dimension: last_minute_net_revenue_ty {
    type: number
    sql: ${TABLE}."last_minute_net_revenue_TY" ;;
  }

  dimension: last_promo_price {
    type: number
    sql: ${TABLE}."last_promo_price" ;;
  }

  dimension: level {
    type: string
    sql: ${TABLE}."level" ;;
  }

  dimension: lm_share_ly {
    type: number
    sql: ${TABLE}."LM_share_LY" ;;
  }

  dimension: lm_share_ty {
    type: number
    sql: ${TABLE}."LM_share_TY" ;;
  }

  dimension: logistic_bonus_ly {
    type: number
    sql: ${TABLE}."logistic_bonus_LY" ;;
  }

  dimension: logistic_bonus_ty {
    type: number
    sql: ${TABLE}."logistic_bonus_TY" ;;
  }

  dimension: marketing_bonus_ly {
    type: number
    sql: ${TABLE}."marketing_bonus_LY" ;;
  }

  dimension: marketing_bonus_ty {
    type: number
    sql: ${TABLE}."marketing_bonus_TY" ;;
  }

  dimension: menu_code {
    type: string
    sql: ${TABLE}."menu_code" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: net_cogs_ly {
    type: number
    sql: ${TABLE}."net_cogs_LY" ;;
  }

  dimension: net_cogs_ty {
    type: number
    sql: ${TABLE}."net_cogs_TY" ;;
  }

  dimension: net_cogs_with_bonus_ly {
    type: number
    sql: ${TABLE}."net_cogs_with_bonus_LY" ;;
  }

  dimension: net_cogs_with_bonus_ty {
    type: number
    sql: ${TABLE}."net_cogs_with_bonus_TY" ;;
  }

  dimension: net_selling_price {
    type: number
    sql: ${TABLE}."net_selling_price" ;;
  }

  dimension: net_selling_price_promo {
    type: number
    sql: ${TABLE}."net_selling_price_promo" ;;
  }

  dimension: nnn_buying_price {
    type: number
    sql: ${TABLE}."nnn_buying_price" ;;
  }

  dimension: nnn_buying_price_promo {
    type: number
    sql: ${TABLE}."nnn_buying_price_promo" ;;
  }

  dimension: nr_ly {
    type: number
    sql: ${TABLE}."NR_LY" ;;
  }

  dimension: nr_ty {
    type: number
    sql: ${TABLE}."NR_TY" ;;
  }

  dimension: on_top_bonus_ly {
    type: number
    sql: ${TABLE}."on_top_bonus_LY" ;;
  }

  dimension: on_top_bonus_ty {
    type: number
    sql: ${TABLE}."on_top_bonus_TY" ;;
  }

  dimension: ordered_amount_ly {
    type: number
    sql: ${TABLE}."ordered_amount_LY" ;;
  }

  dimension: ordered_amount_ty {
    type: number
    sql: ${TABLE}."ordered_amount_TY" ;;
  }

  dimension: packages_ly {
    type: number
    sql: ${TABLE}."packages_LY" ;;
  }

  dimension: packages_ty {
    type: number
    sql: ${TABLE}."packages_TY" ;;
  }

  dimension: price_index {
    type: number
    sql: ${TABLE}."price_index" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: promo_share {
    type: number
    sql: ${TABLE}."promo_share" ;;
  }

  dimension: received_items_ly {
    type: number
    sql: ${TABLE}."received_items_LY" ;;
  }

  dimension: received_items_ty {
    type: number
    sql: ${TABLE}."received_items_TY" ;;
  }

  dimension: received_value_excl {
    type: number
    sql: ${TABLE}."received_value_excl" ;;
  }

  dimension: received_value_incl {
    type: number
    sql: ${TABLE}."received_value_incl" ;;
  }

  dimension: sale_net_cogs_ly {
    type: number
    sql: ${TABLE}."sale_net_cogs_LY" ;;
  }

  dimension: sale_net_cogs_ty {
    type: number
    sql: ${TABLE}."sale_net_cogs_TY" ;;
  }

  dimension: sale_net_revenue_ly {
    type: number
    sql: ${TABLE}."sale_net_revenue_LY" ;;
  }

  dimension: sale_net_revenue_ty {
    type: number
    sql: ${TABLE}."sale_net_revenue_TY" ;;
  }

  dimension: shrink_value_ly {
    type: number
    sql: ${TABLE}."shrink_value_LY" ;;
  }

  dimension: shrink_value_ty {
    type: number
    sql: ${TABLE}."shrink_value_TY" ;;
  }

  dimension: stock_value {
    type: number
    sql: ${TABLE}."stock_value" ;;
  }

  dimension: stock_value_orig {
    type: number
    sql: ${TABLE}."stock_value_orig" ;;
  }

  dimension: supplier_id {
    type: string
    sql: ${TABLE}."supplier_id" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: transactions_sum_count_ly {
    type: number
    sql: ${TABLE}."transactions_sum_count_LY" ;;
  }

  dimension: transactions_sum_count_ty {
    type: number
    sql: ${TABLE}."transactions_sum_count_TY" ;;
  }

  dimension: turnover_bonus_ly {
    type: number
    sql: ${TABLE}."turnover_bonus_LY" ;;
  }

  dimension: turnover_bonus_ty {
    type: number
    sql: ${TABLE}."turnover_bonus_TY" ;;
  }

  dimension: unit_coefficient {
    type: string
    sql: ${TABLE}."unit_coefficient" ;;
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
      l4_category_name,
      l3_category_name,
      l2_category_name,
      name,
      supplier_name,
      warehouse_name,
      l1_category_name,
      l5_category_name
    ]
  }
}
