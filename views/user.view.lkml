view: user {
  sql_table_name: "WORKSPACE_233686783"."user"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: aov {
    type: number
    sql: ${TABLE}."aov" ;;
  }

  dimension: arpu_level {
    type: string
    sql: ${TABLE}."arpu_level" ;;
  }

  dimension: baby_buyer {
    type: string
    sql: ${TABLE}."baby_buyer" ;;
  }

  dimension: call_accepted {
    type: string
    sql: ${TABLE}."call_accepted" ;;
  }

  dimension: company_user_from {
    type: string
    sql: ${TABLE}."company_user_from" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: create_date {
    type: string
    sql: ${TABLE}."create_date" ;;
  }

  dimension: days_since_last_order {
    type: number
    sql: ${TABLE}."days_since_last_order" ;;
  }

  dimension: demo_user {
    type: string
    sql: ${TABLE}."demo_user" ;;
  }

  dimension: first_order_city {
    type: string
    sql: ${TABLE}."first_order_city" ;;
  }

  dimension: first_order_city_region {
    type: string
    sql: ${TABLE}."first_order_city_region" ;;
  }

  dimension_group: first_order {
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
    sql: ${TABLE}."first_order_time" ;;
  }

  dimension_group: first_premium_start {
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
    sql: ${TABLE}."first_premium_start_date" ;;
  }

  dimension: has_auto_renew {
    type: string
    sql: ${TABLE}."has_auto_renew" ;;
  }

  dimension: has_paid_premium {
    type: string
    sql: ${TABLE}."has_paid_premium" ;;
  }

  dimension: has_premium {
    type: string
    sql: ${TABLE}."has_premium" ;;
  }

  dimension_group: joined_parents_club {
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
    sql: ${TABLE}."joined_parents_club_at" ;;
  }

  dimension: last_order_city {
    type: string
    sql: ${TABLE}."last_order_city" ;;
  }

  dimension: last_order_region {
    type: string
    sql: ${TABLE}."last_order_region" ;;
  }

  dimension_group: last_order {
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
    sql: ${TABLE}."last_order_time" ;;
  }

  dimension: main_funnel {
    type: string
    sql: ${TABLE}."main_funnel" ;;
  }

  dimension: master_user_unique_id {
    type: string
    sql: ${TABLE}."master_user_unique_id" ;;
  }

  dimension: max_bill_amount_approved {
    type: number
    sql: ${TABLE}."max_bill_amount_approved" ;;
  }

  dimension: num_of_subscription {
    type: number
    sql: ${TABLE}."num_of_subscription" ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}."orders_count" ;;
  }

  dimension: parents_club {
    type: string
    sql: ${TABLE}."parents_club" ;;
  }

  dimension_group: premium_end {
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
    sql: ${TABLE}."premium_end_date" ;;
  }

  dimension: premium_origin {
    type: string
    sql: ${TABLE}."premium_origin" ;;
  }

  dimension: premium_type {
    type: string
    sql: ${TABLE}."premium_type" ;;
  }

  dimension: senior {
    type: string
    sql: ${TABLE}."senior" ;;
  }

  dimension_group: senior_added {
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
    sql: ${TABLE}."senior_added_at" ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}."sex" ;;
  }

  dimension: sms_enabled {
    type: string
    sql: ${TABLE}."sms_enabled" ;;
  }

  dimension: sms_exclude {
    type: string
    sql: ${TABLE}."sms_exclude" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      aggregated_order.count,
      all_notifications_ro.count,
      all_orders_and_replaced_items.count,
      aov_per_click.count,
      app_first_open_and_auth.count,
      app_homepage_test_reporting.count,
      batch_campaign_global_control.count,
      campaign_sku_shopped.count,
      campain_sku_shopped.count,
      cex_user_detail.count,
      cex_user_details_112022.count,
      checkout_oneclick.count,
      crm_perso_user_control_groups.count,
      custom_field_snapshot.count,
      customer_profile.count,
      customer_profile_impression.count,
      daktela_call_center_evaluation.count,
      eligible_customers.count,
      eligible_customers_detail.count,
      event_item_app.count,
      event_item_web.count,
      ftu_buyer_types.count,
      homepage_abc_test_evaluation.count,
      loyalty_scheme_abtests.count,
      mailing_detail_all.count,
      meal_tickets.count,
      mobile_exits.count,
      nps_11_2022.count,
      nps_responses_all_11_2022.count,
      order.count,
      pbl_couriers_customers.count,
      personalization_reporting.count,
      personalization_reporting_insp_belt.count,
      premium_event_flow.count,
      premium_event_flow_segment.count,
      premium_events_on_touchpoints.count,
      premium_segmentation.count,
      recipe_performance.count,
      recurrent_payment_scheduler.count,
      reusable_bags_move.count,
      reusable_bags_user_balance.count,
      reusable_bags_user_deposit.count,
      self_service_target_control_evaluation.count,
      staging614ddd3751cbe.count,
      staging63309e6541c64.count,
      staging63bd6127a3969.count,
      target_control_self_service_evaluation.count,
      target_control_self_service_segment_evaluation.count,
      triggered_campaign_history_all.count,
      triggered_sku_shopped.count,
      user_child.count,
      user_custom_fields.count,
      user_premium_sale_action.count,
      user_retention.count,
      virtual_order_payment_details.count,
      virtual_order_payment_methods.count,
      vouchers_activated.count,
      vouchers_sold.count,
      wapi_access_token.count,
      warehouse_entrance_allocation.count,
      warehouse_performance.count,
      web_homepage_ab_test_evaluation.count
    ]
  }
}
