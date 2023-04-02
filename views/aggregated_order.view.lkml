view: aggregated_order {
  sql_table_name: "WORKSPACE_233686783"."aggregated_order"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: alternative_vehicle {
    type: number
    sql: ${TABLE}."alternative_vehicle" ;;
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

  dimension: available_vehicles_count {
    type: number
    sql: ${TABLE}."available_vehicles_count" ;;
  }

  dimension: bags {
    type: number
    sql: ${TABLE}."bags" ;;
  }

  dimension: benefit {
    type: string
    sql: ${TABLE}."benefit" ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}."campaign" ;;
  }

  dimension: capacity_ambient {
    type: number
    sql: ${TABLE}."capacity_ambient" ;;
  }

  dimension: capacity_cooled {
    type: number
    sql: ${TABLE}."capacity_cooled" ;;
  }

  dimension: cargo_delivered_orders {
    type: number
    sql: ${TABLE}."cargo_delivered_orders" ;;
  }

  dimension: cargo_id {
    type: string
    sql: ${TABLE}."cargo_id" ;;
  }

  dimension: commentary {
    type: string
    sql: ${TABLE}."commentary" ;;
  }

  dimension: conversion_rate_to_euro_fin {
    type: number
    sql: ${TABLE}."conversion_rate_to_euro_fin" ;;
  }

  dimension: cooled_bags {
    type: number
    sql: ${TABLE}."cooled_bags" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: courier_called_before_delivery {
    type: string
    sql: ${TABLE}."courier_called_before_delivery" ;;
  }

  dimension: courier_commentary {
    type: string
    sql: ${TABLE}."courier_commentary" ;;
  }

  dimension: courier_id {
    type: string
    sql: ${TABLE}."courier_id" ;;
  }

  dimension: courier_minutes_on_the_road {
    type: number
    sql: ${TABLE}."courier_minutes_on_the_road" ;;
  }

  dimension: courier_name {
    type: string
    sql: ${TABLE}."courier_name" ;;
  }

  dimension: courier_rating {
    type: number
    sql: ${TABLE}."courier_rating" ;;
  }

  dimension: courier_sent_sms_before_delivery {
    type: string
    sql: ${TABLE}."courier_sent_sms_before_delivery" ;;
  }

  dimension: courier_working_hours {
    type: number
    sql: ${TABLE}."courier_working_hours" ;;
  }

  dimension: courier_working_minutes {
    type: number
    sql: ${TABLE}."courier_working_minutes" ;;
  }

  dimension: cross_dock {
    type: number
    sql: ${TABLE}."cross_dock" ;;
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

  dimension: delayed_bags {
    type: number
    sql: ${TABLE}."delayed_bags" ;;
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

  dimension: delivery_nr {
    type: number
    sql: ${TABLE}."delivery_nr" ;;
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

  dimension: delivery_zone_unique_id {
    type: string
    sql: ${TABLE}."delivery_zone_unique_id" ;;
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

  dimension: distance {
    type: number
    sql: ${TABLE}."distance" ;;
  }

  dimension: dry_bags {
    type: number
    sql: ${TABLE}."dry_bags" ;;
  }

  dimension: early {
    type: number
    sql: ${TABLE}."early" ;;
  }

  dimension: eco_slot {
    type: string
    sql: ${TABLE}."eco_slot" ;;
  }

  dimension: extra_bags {
    type: number
    sql: ${TABLE}."extra_bags" ;;
  }

  dimension: final_route_id {
    type: string
    sql: ${TABLE}."final_route_id" ;;
  }

  dimension: finished_order {
    type: string
    sql: ${TABLE}."finished_order" ;;
  }

  dimension_group: first_order_field_created {
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
    sql: ${TABLE}."first_order_field_created_at" ;;
  }

  dimension: frozen_bags {
    type: number
    sql: ${TABLE}."frozen_bags" ;;
  }

  dimension: gr {
    type: number
    sql: ${TABLE}."gr" ;;
  }

  dimension: in_reusable_bag {
    type: string
    sql: ${TABLE}."in_reusable_bag" ;;
  }

  dimension: is_asap {
    type: string
    sql: ${TABLE}."is_asap" ;;
  }

  dimension: is_first_order {
    type: string
    sql: ${TABLE}."is_first_order" ;;
  }

  dimension: is_region {
    type: string
    sql: ${TABLE}."is_region" ;;
  }

  dimension: items_count {
    type: number
    sql: ${TABLE}."items_count" ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}."keyword" ;;
  }

  dimension: kids_gr {
    type: number
    sql: ${TABLE}."kids_gr" ;;
  }

  dimension_group: last_order_field_created {
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
    sql: ${TABLE}."last_order_field_created_at" ;;
  }

  dimension: last_order_sequence {
    type: string
    sql: ${TABLE}."last_order_sequence" ;;
  }

  dimension: loading_time {
    type: number
    sql: ${TABLE}."loading_time" ;;
  }

  dimension: master_order_id {
    type: string
    sql: ${TABLE}."master_order_id" ;;
  }

  dimension: master_order_unique_id {
    type: string
    sql: ${TABLE}."master_order_unique_id" ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}."medium" ;;
  }

  dimension: net_cashback {
    type: number
    sql: ${TABLE}."net_cashback" ;;
  }

  dimension: net_cogs {
    type: number
    sql: ${TABLE}."net_cogs" ;;
  }

  dimension: nobags {
    type: number
    sql: ${TABLE}."nobags" ;;
  }

  dimension: nr {
    type: number
    sql: ${TABLE}."nr" ;;
  }

  dimension: order_arpu_level {
    type: string
    sql: ${TABLE}."order_arpu_level" ;;
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

  dimension: order_main_funnel {
    type: string
    sql: ${TABLE}."order_main_funnel" ;;
  }

  dimension: order_sequence {
    type: string
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

  dimension: payed_by {
    type: string
    sql: ${TABLE}."payed_by" ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}."payment_method" ;;
  }

  dimension: pharmacy_bags {
    type: number
    sql: ${TABLE}."pharmacy_bags" ;;
  }

  dimension: pharmacy_gr {
    type: number
    sql: ${TABLE}."pharmacy_gr" ;;
  }

  dimension_group: picked_up {
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
    sql: ${TABLE}."picked_up" ;;
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

  dimension: points_sale {
    type: number
    sql: ${TABLE}."points_sale" ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}."postal_code" ;;
  }

  dimension_group: prepared {
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
    sql: ${TABLE}."prepared_at" ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}."rating" ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}."reason" ;;
  }

  dimension: registration_number {
    type: string
    sql: ${TABLE}."registration_number" ;;
  }

  dimension: remember_card {
    type: string
    sql: ${TABLE}."remember_card" ;;
  }

  dimension: route_duration_in_minutes {
    type: number
    sql: ${TABLE}."route_duration_in_minutes" ;;
  }

  dimension: route_id {
    type: string
    sql: ${TABLE}."route_id" ;;
  }

  dimension: route_orders {
    type: number
    sql: ${TABLE}."route_orders" ;;
  }

  dimension: sku_count {
    type: number
    sql: ${TABLE}."sku_count" ;;
  }

  dimension: sku_count_sold {
    type: number
    sql: ${TABLE}."sku_count_sold" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."source" ;;
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

  dimension: tips_gr {
    type: number
    sql: ${TABLE}."tips_gr" ;;
  }

  dimension: tips_nr {
    type: number
    sql: ${TABLE}."tips_nr" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: use_remembered_card {
    type: string
    sql: ${TABLE}."use_remembered_card" ;;
  }

  dimension: used_credits {
    type: number
    sql: ${TABLE}."used_credits" ;;
  }

  dimension: used_vehicles_count {
    type: number
    sql: ${TABLE}."used_vehicles_count" ;;
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

  dimension: valuable_bags {
    type: number
    sql: ${TABLE}."valuable_bags" ;;
  }

  dimension: vehicle_unique_id {
    type: string
    sql: ${TABLE}."vehicle_unique_id" ;;
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

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  dimension: weeks_from_wh_opening {
    type: string
    sql: ${TABLE}."weeks_from_wh_opening" ;;
  }

  dimension: zone_city {
    type: string
    sql: ${TABLE}."zone_city" ;;
  }

  dimension: zone_region {
    type: string
    sql: ${TABLE}."zone_region" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, delivery_point_name, warehouse_name, courier_name, user.id]
  }
}
