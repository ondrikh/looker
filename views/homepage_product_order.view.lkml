view: homepage_product_order {
  sql_table_name: "WORKSPACE_233686783"."homepage_product_order"
    ;;

  dimension: amount {
    type: string
    sql: ${TABLE}."amount" ;;
  }

  dimension: aov {
    type: string
    sql: ${TABLE}."aov" ;;
  }

  dimension: arpu_level {
    type: string
    sql: ${TABLE}."arpu_level" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: count_homepage_product_order {
    type: string
    sql: ${TABLE}."count" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension: dsfo {
    type: string
    sql: ${TABLE}."dsfo" ;;
  }

  dimension: dslo {
    type: string
    sql: ${TABLE}."dslo" ;;
  }

  dimension_group: ends {
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
    sql: ${TABLE}."ends_at" ;;
  }

  dimension: gr {
    type: number
    sql: ${TABLE}."gr" ;;
  }

  dimension: inventory_unique_id {
    type: string
    sql: ${TABLE}."inventory_unique_id" ;;
  }

  dimension: is_revenue {
    type: string
    sql: ${TABLE}."is_revenue" ;;
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

  dimension: main_funnel {
    type: string
    sql: ${TABLE}."main_funnel" ;;
  }

  dimension: master_order_unique_id {
    type: string
    sql: ${TABLE}."master_order_unique_id" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: order_with_hp_product {
    type: number
    sql: ${TABLE}."order_with_HP_product" ;;
  }

  dimension: orders {
    type: string
    sql: ${TABLE}."orders" ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}."position" ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}."price" ;;
  }

  dimension: price_sensitivity {
    type: string
    sql: ${TABLE}."price_sensitivity" ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."product_id" ;;
  }

  dimension: remaining {
    type: string
    sql: ${TABLE}."remaining" ;;
  }

  dimension_group: started {
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
    sql: ${TABLE}."started_at" ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}."time" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: unit_sell_price_incl_vat {
    type: string
    sql: ${TABLE}."unit_sell_price_incl_vat" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: week {
    type: number
    sql: ${TABLE}."WEEK" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      l2_category_name,
      name,
      l3_category_name,
      l1_category_name,
      product.name,
      product.l2_category_name,
      product.product_family_name,
      product.l4_category_name,
      product.id,
      product.l5_category_name,
      product.l1_category_name,
      product.l3_category_name
    ]
  }
}
