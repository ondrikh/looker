view: order {
  sql_table_name: "WORKSPACE_233686783"."order"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: address_id {
    type: string
    sql: ${TABLE}."address_id" ;;
  }

  dimension: address_unique_id {
    type: string
    sql: ${TABLE}."address_unique_id" ;;
  }

  dimension: arrival_real {
    type: string
    sql: ${TABLE}."arrival_real" ;;
  }

  dimension: bags {
    type: number
    sql: ${TABLE}."bags" ;;
  }

  dimension: benefit {
    type: string
    sql: ${TABLE}."benefit" ;;
  }

  dimension: cargo_id {
    type: string
    sql: ${TABLE}."cargo_id" ;;
  }

  dimension: cooled_bags {
    type: string
    sql: ${TABLE}."cooled_bags" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: courier_id {
    type: string
    sql: ${TABLE}."courier_id" ;;
  }

  dimension: courier_name {
    type: string
    sql: ${TABLE}."courier_name" ;;
  }

  dimension: courier_rating {
    type: string
    sql: ${TABLE}."courier_rating" ;;
  }

  dimension: crossdock_id {
    type: string
    sql: ${TABLE}."crossdock_id" ;;
  }

  dimension: crossdock_unique_id {
    type: string
    sql: ${TABLE}."crossdock_unique_id" ;;
  }

  dimension: days_since_first_order {
    type: number
    sql: ${TABLE}."days_since_first_order" ;;
  }

  dimension: days_since_previous {
    type: number
    sql: ${TABLE}."days_since_previous" ;;
  }

  dimension: delay {
    type: number
    sql: ${TABLE}."delay" ;;
  }

  dimension_group: deliver_at {
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

  dimension: deliver_at_vs_current_timestamp_diff_months {
    type: number
    sql: ${TABLE}."deliver_at_vs_current_timestamp_diff_months" ;;
  }

  dimension: delivery_point_name {
    type: string
    sql: ${TABLE}."delivery_point_name" ;;
  }

  dimension: delivery_point_type {
    type: string
    sql: ${TABLE}."delivery_point_type" ;;
  }

  dimension: delivery_zone {
    type: string
    sql: ${TABLE}."delivery_zone" ;;
  }

  dimension: departure_real {
    type: string
    sql: ${TABLE}."departure_real" ;;
  }

  dimension: dry_bags {
    type: string
    sql: ${TABLE}."dry_bags" ;;
  }

  dimension: early {
    type: number
    sql: ${TABLE}."early" ;;
  }

  dimension: finished_order {
    type: string
    sql: ${TABLE}."finished_order" ;;
  }

  dimension: frozen_bags {
    type: string
    sql: ${TABLE}."frozen_bags" ;;
  }

  dimension: glat {
    type: string
    sql: ${TABLE}."glat" ;;
  }

  dimension: glon {
    type: string
    sql: ${TABLE}."glon" ;;
  }

  dimension: is_asap {
    type: string
    sql: ${TABLE}."is_asap" ;;
  }

  dimension: is_first_order {
    type: string
    sql: ${TABLE}."is_first_order" ;;
  }

  dimension: last_order_sequence {
    type: number
    sql: ${TABLE}."last_order_sequence" ;;
  }

  dimension: master_order_id {
    type: string
    sql: ${TABLE}."master_order_id" ;;
  }

  dimension: master_order_unique_id {
    type: string
    sql: ${TABLE}."master_order_unique_id" ;;
  }

  dimension: order_by_premium_origin {
    type: string
    sql: ${TABLE}."order_by_premium_origin" ;;
  }

  dimension: order_by_premium_paid_type {
    type: string
    sql: ${TABLE}."order_by_premium_paid_type" ;;
  }

  dimension: order_by_premium_user {
    type: string
    sql: ${TABLE}."order_by_premium_user" ;;
  }

  dimension: order_by_premium_user_paid {
    type: string
    sql: ${TABLE}."order_by_premium_user_paid" ;;
  }

  dimension: order_sequence {
    type: number
    sql: ${TABLE}."order_sequence" ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}."origin" ;;
  }

  dimension: origin_version {
    type: string
    sql: ${TABLE}."origin_version" ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}."payment_method" ;;
  }

  dimension_group: picking_start {
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
    sql: ${TABLE}."picking_start_time" ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}."postal_code" ;;
  }

  dimension: rating {
    type: string
    sql: ${TABLE}."rating" ;;
  }

  dimension: remember_card {
    type: string
    sql: ${TABLE}."remember_card" ;;
  }

  dimension: route_id {
    type: string
    sql: ${TABLE}."route_id" ;;
  }

  dimension: route_unique_id {
    type: string
    sql: ${TABLE}."route_unique_id" ;;
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

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: upload_to_tableau {
    type: string
    sql: ${TABLE}."upload_to_tableau" ;;
  }

  dimension: use_remembered_card {
    type: string
    sql: ${TABLE}."use_remembered_card" ;;
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

  dimension: virtual_timeslot {
    type: string
    sql: ${TABLE}."virtual_timeslot" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  dimension: warranty_claim_order {
    type: number
    sql: ${TABLE}."warranty_claim_order" ;;
  }

  dimension: year_deliver_at {
    type: string
    sql: ${TABLE}."year_deliver_at" ;;
  }

  dimension: zone_city {
    type: string
    sql: ${TABLE}."zone_city" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      courier_name,
      warehouse_name,
      delivery_point_name,
      user.id,
      add_to_basket_push.count,
      all_orders_and_replaced_items.count,
      aov_per_click.count,
      app_homepage_test_reporting.count,
      bottles_in_crates_transactions.count,
      checkout_errors.count,
      checkout_oneclick.count,
      delivery_conditions.count,
      error_types.count,
      homepage_abc_test_evaluation.count,
      items_evaluation.count,
      items_evaluation_last.count,
      logistic_order.count,
      mobile_exits.count,
      mystery_item_evaluation_last.count,
      mystery_item_evaluation_last.count,
      mystery_order_evaluation_last.count,
      nb_shelf_report.count,
      order_evaluation.count,
      order_evaluation_last.count,
      order_payment_change_history.count,
      order_time_change.count,
      pbl_couriers_customers.count,
      personalization_reporting_insp_belt.count,
      picking_item.count,
      reusable_bags_move.count,
      reusable_bags_user_deposit.count,
      sentiment.count,
      srst.count,
      staging604a0ee1d21fc.count,
      staging606f3c07825de.count,
      staging60d099c2acd3e.count,
      staging61c427f894de6.count,
      staging61cc8647d6fc1.count,
      staging61dd9c1f826c7.count,
      staging63309e6541c64.count,
      staging63bd6126dfb6d.count,
      staging63bd6128786f2.count,
      supplier_reliability.count,
      supplier_reservations_orders.count,
      tmp_test_evaluation.count,
      virtual_order_payment_details.count,
      virtual_order_payment_methods.count,
      wapi_bags_audit_routes.count,
      wapi_crate_audit.count,
      warehouse_replacement_with_ticket.count,
      web_homepage_ab_test_evaluation.count
    ]
  }
}
