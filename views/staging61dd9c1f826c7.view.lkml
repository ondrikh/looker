view: staging61dd9c1f826c7 {
  sql_table_name: "WORKSPACE_233686783"."staging61dd9c1f826c7"
    ;;

  dimension: carton_amount {
    type: number
    sql: ${TABLE}."carton_amount" ;;
  }

  dimension_group: closed {
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
    sql: ${TABLE}."closed_at" ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}."code" ;;
  }

  dimension: confirmed_order_count {
    type: number
    sql: ${TABLE}."confirmed_order_count" ;;
  }

  dimension: contract_purchasing_price {
    type: string
    sql: ${TABLE}."contract_purchasing_price" ;;
  }

  dimension: contract_purchasing_price_unit {
    type: string
    sql: ${TABLE}."contract_purchasing_price_unit" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}."create_date" ;;
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

  dimension_group: deliver {
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
    sql: ${TABLE}."deliver_at" ;;
  }

  dimension: despatch_advice {
    type: string
    sql: ${TABLE}."despatch_advice" ;;
  }

  dimension: error_state {
    type: string
    sql: ${TABLE}."error_state" ;;
  }

  dimension: error_state_report {
    type: string
    sql: ${TABLE}."error_state_report" ;;
  }

  dimension_group: finished {
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
    sql: ${TABLE}."finished_at" ;;
  }

  dimension: found_in_stock {
    type: string
    sql: ${TABLE}."found_in_stock" ;;
  }

  dimension: is_sale {
    type: string
    sql: ${TABLE}."is_sale" ;;
  }

  dimension: is_sscc {
    type: string
    sql: ${TABLE}."is_sscc" ;;
  }

  dimension: layer_amount {
    type: number
    sql: ${TABLE}."layer_amount" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: non_edi {
    type: string
    sql: ${TABLE}."non_edi" ;;
  }

  dimension: order_count_pieces {
    type: number
    sql: ${TABLE}."order_count_pieces" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."order_id" ;;
  }

  dimension: order_kilogram_count {
    type: number
    sql: ${TABLE}."order_kilogram_count" ;;
  }

  dimension: order_unit {
    type: string
    sql: ${TABLE}."order_unit" ;;
  }

  dimension: pallete_amount {
    type: number
    sql: ${TABLE}."pallete_amount" ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."product_id" ;;
  }

  dimension: replenished_amount {
    type: number
    sql: ${TABLE}."replenished_amount" ;;
  }

  dimension: replenishment_error_type_id {
    type: string
    sql: ${TABLE}."replenishment_error_type_id" ;;
  }

  dimension_group: replenishment_first_created {
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
    sql: ${TABLE}."replenishment_first_created" ;;
  }

  dimension_group: replenishment_last_created {
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
    sql: ${TABLE}."replenishment_last_created" ;;
  }

  dimension_group: sent_to_ccv {
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
    sql: ${TABLE}."sent_to_ccv_time" ;;
  }

  dimension: supplier_id {
    type: string
    sql: ${TABLE}."supplier_id" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: supplier_warehouse_id {
    type: string
    sql: ${TABLE}."supplier_warehouse_id" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: wanted_count {
    type: number
    sql: ${TABLE}."wanted_count" ;;
  }

  dimension: wanted_count_original {
    type: number
    sql: ${TABLE}."wanted_count_original" ;;
  }

  dimension: warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."warehouse_inventory_unique_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  dimension: warehouse_replenishment_amount {
    type: number
    sql: ${TABLE}."warehouse_replenishment_amount" ;;
  }

  dimension: warehouse_replenishment_error_amount {
    type: number
    sql: ${TABLE}."warehouse_replenishment_error_amount" ;;
  }

  dimension: warehouse_replenishment_price {
    type: number
    sql: ${TABLE}."warehouse_replenishment_price" ;;
  }

  dimension: warehouse_request_id {
    type: string
    sql: ${TABLE}."warehouse_request_id" ;;
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
      supplier_name,
      warehouse_name,
      name,
      order.courier_name,
      order.warehouse_name,
      order.delivery_point_name,
      order.id,
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
