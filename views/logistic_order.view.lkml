view: logistic_order {
  sql_table_name: "WORKSPACE_233686783"."logistic_order"
    ;;

  dimension: address_vs_arrival_click_location_distance {
    type: number
    sql: ${TABLE}."address_vs_arrival_click_location_distance" ;;
  }

  dimension_group: arrival_expected {
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
    sql: ${TABLE}."arrival_expected" ;;
  }

  dimension_group: arrival_gps_click {
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
    sql: ${TABLE}."arrival_gps_click_at" ;;
  }

  dimension_group: arrival_real {
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
    sql: ${TABLE}."arrival_real" ;;
  }

  dimension_group: bag_released {
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
    sql: ${TABLE}."bag_released_at" ;;
  }

  dimension: cargo_unique_id {
    type: string
    sql: ${TABLE}."cargo_unique_id" ;;
  }

  dimension_group: complete_order_in_courier_buffer {
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
    sql: ${TABLE}."complete_order_in_courier_buffer_at" ;;
  }

  dimension_group: complete_order_in_expedition {
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
    sql: ${TABLE}."complete_order_in_expedition_at" ;;
  }

  dimension: courier_back_at_warehouse {
    type: string
    sql: ${TABLE}."courier_back_at_warehouse" ;;
  }

  dimension: courier_id {
    type: string
    sql: ${TABLE}."courier_id" ;;
  }

  dimension: courier_is_at_warehouse {
    type: string
    sql: ${TABLE}."courier_is_at_warehouse" ;;
  }

  dimension: courier_name {
    type: string
    sql: ${TABLE}."courier_name" ;;
  }

  dimension: courier_rating {
    type: number
    sql: ${TABLE}."courier_rating" ;;
  }

  dimension: courier_working_hours {
    type: number
    sql: ${TABLE}."courier_working_hours" ;;
  }

  dimension: courier_working_minutes {
    type: number
    sql: ${TABLE}."courier_working_minutes" ;;
  }

  dimension: delay {
    type: number
    sql: ${TABLE}."delay" ;;
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

  dimension_group: deliver_till {
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
    sql: ${TABLE}."deliver_till" ;;
  }

  dimension: delivery_zone {
    type: string
    sql: ${TABLE}."delivery_zone" ;;
  }

  dimension: departure_expected {
    type: string
    sql: ${TABLE}."departure_expected" ;;
  }

  dimension_group: departure_real {
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
    sql: ${TABLE}."departure_real" ;;
  }

  dimension: distance_from_last_order {
    type: number
    sql: ${TABLE}."distance_from_last_order" ;;
  }

  dimension: distance_from_previous {
    type: number
    sql: ${TABLE}."distance_from_previous" ;;
  }

  dimension: final_route_id {
    type: string
    sql: ${TABLE}."final_route_id" ;;
  }

  dimension: finished_order {
    type: string
    sql: ${TABLE}."finished_order" ;;
  }

  dimension_group: first_bag_scanned {
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
    sql: ${TABLE}."first_bag_scanned" ;;
  }

  dimension_group: first_scanned_bag {
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
    sql: ${TABLE}."first_scanned_bag_at" ;;
  }

  dimension: hold {
    type: string
    sql: ${TABLE}."hold" ;;
  }

  dimension: is_asap {
    type: string
    sql: ${TABLE}."is_asap" ;;
  }

  dimension: is_express_route {
    type: string
    sql: ${TABLE}."is_express_route" ;;
  }

  dimension: is_first_order {
    type: string
    sql: ${TABLE}."is_first_order" ;;
  }

  dimension: is_manual {
    type: string
    sql: ${TABLE}."is_manual" ;;
  }

  dimension: is_region {
    type: string
    sql: ${TABLE}."is_region" ;;
  }

  dimension_group: last_bag_in_expedition_or_in_courier_buffer {
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
    sql: ${TABLE}."last_bag_in_expedition_or_in_courier_buffer_at" ;;
  }

  dimension: last_order {
    type: string
    sql: ${TABLE}."last_order" ;;
  }

  dimension_group: last_scanned_bag {
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
    sql: ${TABLE}."last_scanned_bag_at" ;;
  }

  dimension: loading_time {
    type: number
    sql: ${TABLE}."loading_time" ;;
  }

  dimension: location_vs_click_time_diff_in_seconds {
    type: number
    sql: ${TABLE}."location_vs_click_time_diff_in_seconds" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."order_id" ;;
  }

  dimension: order_out_of_solvertech {
    type: string
    sql: ${TABLE}."order_out_of_solvertech" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}."payment_method" ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}."position" ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}."rating" ;;
  }

  dimension: registration_number {
    type: string
    sql: ${TABLE}."registration_number" ;;
  }

  dimension: return_delay {
    type: number
    sql: ${TABLE}."return_delay" ;;
  }

  dimension: route_accepted_at {
    type: string
    sql: ${TABLE}."route_accepted_at" ;;
  }

  dimension: route_assigned_automatically {
    type: string
    sql: ${TABLE}."route_assigned_automatically" ;;
  }

  dimension: route_assignments_created_at {
    type: string
    sql: ${TABLE}."route_assignments_created_at" ;;
  }

  dimension_group: route_created {
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
    sql: ${TABLE}."route_created_at" ;;
  }

  dimension: route_departure_expected {
    type: string
    sql: ${TABLE}."route_departure_expected" ;;
  }

  dimension: route_departure_real {
    type: string
    sql: ${TABLE}."route_departure_real" ;;
  }

  dimension: route_finished_at {
    type: string
    sql: ${TABLE}."route_finished_at" ;;
  }

  dimension: route_unique_id {
    type: string
    sql: ${TABLE}."route_unique_id" ;;
  }

  dimension: route_warehouse_arrival {
    type: string
    sql: ${TABLE}."route_warehouse_arrival" ;;
  }

  dimension: route_warehouse_departure {
    type: string
    sql: ${TABLE}."route_warehouse_departure" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: sub_order {
    type: string
    sql: ${TABLE}."sub_order" ;;
  }

  dimension_group: time {
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
    sql: ${TABLE}."time" ;;
  }

  dimension: time_from_previous {
    type: string
    sql: ${TABLE}."time_from_previous" ;;
  }

  dimension: tips_gr {
    type: number
    sql: ${TABLE}."tips_gr" ;;
  }

  dimension: tips_nr {
    type: number
    sql: ${TABLE}."tips_nr" ;;
  }

  dimension: virtual_timeslot {
    type: string
    sql: ${TABLE}."virtual_timeslot" ;;
  }

  dimension: waiting_time {
    type: number
    sql: ${TABLE}."waiting_time" ;;
  }

  dimension: warehouse_delay {
    type: number
    sql: ${TABLE}."warehouse_delay" ;;
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
      courier_name,
      warehouse_name,
      order.courier_name,
      order.warehouse_name,
      order.delivery_point_name,
      order.id
    ]
  }
}
