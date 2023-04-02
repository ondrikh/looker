view: personalization_reporting {
  sql_table_name: "WORKSPACE_233686783"."personalization_reporting"
    ;;

  dimension: actions_type {
    type: string
    sql: ${TABLE}."actions_type" ;;
  }

  dimension: count_personalization_reporting {
    type: string
    sql: ${TABLE}."count" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}."customer_type" ;;
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

  dimension_group: deliver_at {
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
    sql: ${TABLE}."deliver_at_date" ;;
  }

  dimension: gr {
    type: string
    sql: ${TABLE}."gr" ;;
  }

  dimension: hp_group {
    type: string
    sql: ${TABLE}."hp_group" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: l1_category_name_en {
    type: string
    sql: ${TABLE}."L1_category_name_en" ;;
  }

  dimension: master_order_unique_id {
    type: string
    sql: ${TABLE}."master_order_unique_id" ;;
  }

  dimension: nr {
    type: string
    sql: ${TABLE}."nr" ;;
  }

  dimension: order_arpu_level {
    type: string
    sql: ${TABLE}."order_arpu_level" ;;
  }

  dimension: order_main_funnel {
    type: string
    sql: ${TABLE}."order_main_funnel" ;;
  }

  dimension: order_time {
    type: string
    sql: ${TABLE}."order_time" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension: pa_original_price {
    type: string
    sql: ${TABLE}."pa_original_price" ;;
  }

  dimension: pick_source {
    type: string
    sql: ${TABLE}."pick_source" ;;
  }

  dimension: pick_source_category_id {
    type: string
    sql: ${TABLE}."pick_source_category_id" ;;
  }

  dimension: points_sale {
    type: string
    sql: ${TABLE}."points_sale" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: sku_count_sold {
    type: string
    sql: ${TABLE}."sku_count_sold" ;;
  }

  dimension: test_categories {
    type: string
    sql: ${TABLE}."test_categories" ;;
  }

  dimension: test_category_ordering {
    type: string
    sql: ${TABLE}."test_category_ordering" ;;
  }

  dimension: test_category_ordering_subvariant {
    type: string
    sql: ${TABLE}."test_category_ordering_subvariant" ;;
  }

  dimension: test_favourites {
    type: string
    sql: ${TABLE}."test_favourites" ;;
  }

  dimension: test_favourites_subvariant {
    type: string
    sql: ${TABLE}."test_favourites_subvariant" ;;
  }

  dimension: test_homepage {
    type: string
    sql: ${TABLE}."test_homepage" ;;
  }

  dimension: test_homepage_subvariant {
    type: string
    sql: ${TABLE}."test_homepage_subvariant" ;;
  }

  dimension: test_upsell_inspiration {
    type: string
    sql: ${TABLE}."test_upsell_inspiration" ;;
  }

  dimension: test_upsell_top {
    type: string
    sql: ${TABLE}."test_upsell_top" ;;
  }

  dimension: unit_buy_price_excl_vat {
    type: string
    sql: ${TABLE}."unit_buy_price_excl_vat" ;;
  }

  dimension: unit_buy_price_incl_vat {
    type: string
    sql: ${TABLE}."unit_buy_price_incl_vat" ;;
  }

  dimension: unit_sell_price_excl_vat {
    type: string
    sql: ${TABLE}."unit_sell_price_excl_vat" ;;
  }

  dimension: unit_sell_price_incl_vat {
    type: string
    sql: ${TABLE}."unit_sell_price_incl_vat" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  dimension: warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."warehouse_inventory_unique_id" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [l1_category_name, user.id]
  }
}
