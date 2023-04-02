view: srst {
  sql_table_name: "WORKSPACE_233686783"."srst"
    ;;

  dimension: active {
    type: string
    sql: ${TABLE}."active" ;;
  }

  dimension: auto_reservations_enabled {
    type: string
    sql: ${TABLE}."auto_reservations_enabled" ;;
  }

  dimension: auto_reservations_transporter_id {
    type: string
    sql: ${TABLE}."auto_reservations_transporter_id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}."created_by" ;;
  }

  dimension: delegate_reservations {
    type: string
    sql: ${TABLE}."delegate_reservations" ;;
  }

  dimension: deleted {
    type: string
    sql: ${TABLE}."deleted" ;;
  }

  dimension_group: deliver {
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
    sql: ${TABLE}."deliver_at" ;;
  }

  dimension: delivery_window_adherence {
    type: string
    sql: ${TABLE}."delivery_window_adherence" ;;
  }

  dimension: enabled {
    type: string
    sql: ${TABLE}."enabled" ;;
  }

  dimension: fixed_slot_delivery {
    type: string
    sql: ${TABLE}."fixed_slot_delivery" ;;
  }

  dimension: fruit_veg {
    type: string
    sql: ${TABLE}."fruit_veg" ;;
  }

  dimension: has_token_pending {
    type: string
    sql: ${TABLE}."has_token_pending" ;;
  }

  dimension: inactive_supplier_w_activation_mail {
    type: string
    sql: ${TABLE}."inactive_supplier_w_activation_mail" ;;
  }

  dimension: inactive_supplier_wo_activation_mail {
    type: string
    sql: ${TABLE}."inactive_supplier_wo_activation_mail" ;;
  }

  dimension: include_order_in_usage_calc {
    type: string
    sql: ${TABLE}."include_order_in_usage_calc" ;;
  }

  dimension: notify_missing_reservation {
    type: string
    sql: ${TABLE}."notify_missing_reservation" ;;
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

  dimension: order_past_future {
    type: string
    sql: ${TABLE}."order_past_future" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension: reservation_window_unique_id {
    type: string
    sql: ${TABLE}."reservation_window_unique_id" ;;
  }

  dimension: same_day_reservations_enabled {
    type: string
    sql: ${TABLE}."same_day_reservations_enabled" ;;
  }

  dimension: shipment_carried_by {
    type: string
    sql: ${TABLE}."shipment_carried_by" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: supplier_id {
    type: string
    sql: ${TABLE}."supplier_id" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension_group: supplier_srst_activated_at {
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
    sql: ${TABLE}."supplier_srst_activated_at_date" ;;
  }

  dimension: supplier_unique_id {
    type: string
    sql: ${TABLE}."supplier_unique_id" ;;
  }

  dimension: supplier_unique_id_co {
    type: string
    sql: ${TABLE}."supplier_unique_id_co" ;;
  }

  dimension: supplier_unique_id_keb {
    type: string
    sql: ${TABLE}."supplier_unique_id_keb" ;;
  }

  dimension_group: supply_delivery {
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
    sql: ${TABLE}."supply_delivery_time" ;;
  }

  dimension: temperature_mode {
    type: string
    sql: ${TABLE}."temperature_mode" ;;
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

  dimension: unloading_reservation_id {
    type: string
    sql: ${TABLE}."unloading_reservation_id" ;;
  }

  dimension: unloading_reservation_unique_id {
    type: string
    sql: ${TABLE}."unloading_reservation_unique_id" ;;
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
      supplier_name,
      transporter_name,
      warehouse_name,
      order.courier_name,
      order.warehouse_name,
      order.delivery_point_name,
      order.id
    ]
  }
}
