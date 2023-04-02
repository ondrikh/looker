view: all_orders_and_replaced_items {
  sql_table_name: "WORKSPACE_233686783"."all_orders_and_replaced_items"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."order_id" ;;
  }

  dimension: order_rating {
    type: number
    sql: ${TABLE}."order_rating" ;;
  }

  dimension_group: order {
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
    sql: ${TABLE}."order_time" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension: original_item_sale_type {
    type: string
    sql: ${TABLE}."original_item_sale_type" ;;
  }

  dimension: original_selfcare_inventory_id {
    type: string
    sql: ${TABLE}."original_selfcare_inventory_id" ;;
  }

  dimension: original_warehouse_inventory_id {
    type: string
    sql: ${TABLE}."original_warehouse_inventory_id" ;;
  }

  dimension: replacement_affecting_customer {
    type: string
    sql: ${TABLE}."replacement_affecting_customer" ;;
  }

  dimension: replacement_selfcare_inventory_id {
    type: string
    sql: ${TABLE}."replacement_selfcare_inventory_id" ;;
  }

  dimension: replacement_warehouse_inventory_id {
    type: string
    sql: ${TABLE}."replacement_warehouse_inventory_id" ;;
  }

  dimension_group: selfcare_created {
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
    sql: ${TABLE}."selfcare_created_at" ;;
  }

  dimension: selfcare_resolved {
    type: number
    sql: ${TABLE}."selfcare_resolved" ;;
  }

  dimension: selfcare_solving_type {
    type: string
    sql: ${TABLE}."selfcare_solving_type" ;;
  }

  dimension_group: selfcare_updated {
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
    sql: ${TABLE}."selfcare_updated_at" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  dimension: warehouse_order_id {
    type: string
    sql: ${TABLE}."warehouse_order_id" ;;
  }

  dimension: warehouse_replacement_solving_type {
    type: string
    sql: ${TABLE}."warehouse_replacement_solving_type" ;;
  }

  dimension_group: warehouse_solved {
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
    sql: ${TABLE}."warehouse_solved_at" ;;
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
      warehouse_name,
      user.id,
      order.courier_name,
      order.warehouse_name,
      order.delivery_point_name,
      order.id
    ]
  }
}
