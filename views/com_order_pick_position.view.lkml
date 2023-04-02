view: com_order_pick_position {
  sql_table_name: "WORKSPACE_233686783"."com_order_pick_position"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: amount_in_stock {
    type: number
    sql: ${TABLE}."amount_in_stock" ;;
  }

  dimension: avg_daily_sales {
    type: number
    sql: ${TABLE}."avg_daily_sales" ;;
  }

  dimension: buffer_current_amount {
    type: number
    sql: ${TABLE}."buffer_current_amount" ;;
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

  dimension: day_count {
    type: string
    sql: ${TABLE}."day_count" ;;
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

  dimension: layer_amount {
    type: number
    sql: ${TABLE}."layer_amount" ;;
  }

  dimension: order_count_pieces {
    type: number
    sql: ${TABLE}."order_count_pieces" ;;
  }

  dimension: palette_amount {
    type: number
    sql: ${TABLE}."palette_amount" ;;
  }

  dimension: physical_amount {
    type: number
    sql: ${TABLE}."physical_amount" ;;
  }

  dimension: picking_position_current_amount {
    type: number
    sql: ${TABLE}."picking_position_current_amount" ;;
  }

  dimension: picking_position_volume {
    type: number
    sql: ${TABLE}."picking_position_volume" ;;
  }

  dimension: predicted_stock_qty {
    type: number
    sql: ${TABLE}."predicted_stock_qty" ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."product_id" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
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

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: weekly_orders {
    type: number
    sql: ${TABLE}."weekly_orders" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      supplier_name,
      product_name,
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
