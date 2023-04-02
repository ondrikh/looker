view: supplier_reservations_orders {
  sql_table_name: "WORKSPACE_233686783"."supplier_reservations_orders"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: bay_id {
    type: string
    sql: ${TABLE}."bay_id" ;;
  }

  dimension: capacity {
    type: string
    sql: ${TABLE}."capacity" ;;
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

  dimension: delegate_reservations {
    type: string
    sql: ${TABLE}."delegate_reservations" ;;
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

  dimension: enabled {
    type: string
    sql: ${TABLE}."enabled" ;;
  }

  dimension: fruit_veg {
    type: string
    sql: ${TABLE}."fruit_veg" ;;
  }

  dimension: is_active {
    type: string
    sql: ${TABLE}."is_active" ;;
  }

  dimension: linked_transporters {
    type: string
    sql: ${TABLE}."linked_transporters" ;;
  }

  dimension_group: open_from {
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
    sql: ${TABLE}."open_from" ;;
  }

  dimension_group: open_to {
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
    sql: ${TABLE}."open_to" ;;
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

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension: origin_unique_id {
    type: string
    sql: ${TABLE}."origin_unique_id" ;;
  }

  dimension: pallets_actual {
    type: number
    sql: ${TABLE}."pallets_actual" ;;
  }

  dimension: pallets_prediction {
    type: number
    sql: ${TABLE}."pallets_prediction" ;;
  }

  dimension: reservation_supplier_unique_id {
    type: string
    sql: ${TABLE}."reservation_supplier_unique_id" ;;
  }

  dimension: reservation_window_id {
    type: string
    sql: ${TABLE}."reservation_window_id" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: supplier_unique_id {
    type: string
    sql: ${TABLE}."supplier_unique_id" ;;
  }

  dimension: temperature_mode {
    type: string
    sql: ${TABLE}."temperature_mode" ;;
  }

  dimension: template_name {
    type: string
    sql: ${TABLE}."template_name" ;;
  }

  dimension_group: time_from {
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
    sql: ${TABLE}."time_from" ;;
  }

  dimension_group: time_to {
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
    sql: ${TABLE}."time_to" ;;
  }

  dimension: transporter_name {
    type: string
    sql: ${TABLE}."transporter_name" ;;
  }

  dimension: truck_type {
    type: string
    sql: ${TABLE}."truck_type" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: user_role {
    type: string
    sql: ${TABLE}."user_role" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      template_name,
      warehouse_name,
      supplier_name,
      transporter_name,
      order.courier_name,
      order.warehouse_name,
      order.delivery_point_name,
      order.id
    ]
  }
}
