connection: "snowflake_prod"

# include all the views
include: "/views/**/*.view"

datagroup: snowflake_prod_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: snowflake_prod_default_datagroup

explore: auto_flow_self_service_segment_evaluation {}

explore: fv_accurracy {}

explore: pis_internal_metrics_backup {}

explore: pis_internal_metrics_backup_report {
  join: product {
    type: left_outer
    sql_on: ${pis_internal_metrics_backup_report.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: abtest_agg {}

explore: abtest_metrics {}

explore: actions_reporting {
  join: product {
    type: left_outer
    sql_on: ${actions_reporting.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: warehouse_inventory {
    type: left_outer
    sql_on: ${actions_reporting.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }
}

explore: active_user_web_app_demography {}

explore: add_to_basket_push {
  join: order {
    type: left_outer
    sql_on: ${add_to_basket_push.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: adhoc_3ds_ab_test_eval {}

explore: adhoc_3ds_ab_test_user {}

explore: adhoc_boris {}

explore: adhoc_flow_self_service_segment_evaluation {}

explore: adyen_pos_terminal_fleet_schedule {}

explore: adyen_threedsecure_authentication {}

explore: adyen_transmission_chargeback {}

explore: adyen_transmissions_capture_aggregated {}

explore: aggregated_availability_by_product_and_date {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${aggregated_availability_by_product_and_date.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: aggregated_available_item_and_transaction_last_30_days {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${aggregated_available_item_and_transaction_last_30_days.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: aggregated_logistic_courier_vehicles {}

explore: aggregated_order {
  join: user {
    type: left_outer
    sql_on: ${aggregated_order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: aggregated_sources {}

explore: aggregated_transaction {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${aggregated_transaction.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: aggregated_transaction_extended {}

explore: aggregated_transaction_in_last_30_days {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${aggregated_transaction_in_last_30_days.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: aggregated_transaction_pricing_test {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${aggregated_transaction_pricing_test.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: aggregated_warehouse_inventory_monthly {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${aggregated_warehouse_inventory_monthly.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: aggregated_warranty {}

explore: aggregated_warranty_fetched_by {}

explore: aggregations_by_date {}

explore: aggregations_by_shifts {}

explore: aggregations_by_shifts_future {}

explore: aggregations_by_slot_of_delivery_real {}

explore: all_actions {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${all_actions.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: all_notifications_ro {
  join: user {
    type: left_outer
    sql_on: ${all_notifications_ro.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: all_orders_and_replaced_items {
  join: user {
    type: left_outer
    sql_on: ${all_orders_and_replaced_items.user_id} = ${user.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${all_orders_and_replaced_items.order_id} = ${order.id} ;;
    relationship: many_to_one
  }
}

explore: all_used_credits {}

explore: alza_analysis {}

explore: anaplan_alignment {}

explore: anaplan_orders_by_hour {}

explore: anaplan_orders_by_hour_unpivot {}

explore: aov_per_click {
  join: order {
    type: left_outer
    sql_on: ${aov_per_click.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${aov_per_click.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: app_first_open_and_auth {
  join: user {
    type: left_outer
    sql_on: ${app_first_open_and_auth.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: app_homepage_test_reporting {
  join: user {
    type: left_outer
    sql_on: ${app_homepage_test_reporting.user_id} = ${user.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${app_homepage_test_reporting.order_id} = ${order.id} ;;
    relationship: many_to_one
  }
}

explore: assortment_reporting {}

explore: available_item_snapshot_filtered {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${available_item_snapshot_filtered.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: available_items_hourly {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${available_items_hourly.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: baby_club {}

explore: baby_club_days {}

explore: baby_products {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${baby_products.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${baby_products.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }
}

explore: bad_sales_forecast_root_causes {}

explore: bad_sales_forecast_root_causes_agg {}

explore: bag_prediction_report {}

explore: bag_scanning {}

explore: bags_hu_report {}

explore: bags_reporting {}

explore: bags_reporting_new {}

explore: batch_camp_analysis_product_level {
  join: product {
    type: left_outer
    sql_on: ${batch_camp_analysis_product_level.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: batch_campaign_global_control {
  join: user {
    type: left_outer
    sql_on: ${batch_campaign_global_control.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: batch_campaign_self_service_evaluation {
  join: product {
    type: left_outer
    sql_on: ${batch_campaign_self_service_evaluation.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: batch_campaign_self_service_segment_evaluation {}

explore: bi_order_plan {}

explore: bottles_in_crates_transactions {
  join: order {
    type: left_outer
    sql_on: ${bottles_in_crates_transactions.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: brand_cohorts {}

explore: campaign_agg {}

explore: campaign_sku_shopped {
  join: user {
    type: left_outer
    sql_on: ${campaign_sku_shopped.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: campaign_triggered_agg {}

explore: campaign_triggered_total {}

explore: campain_sku_shopped {
  join: user {
    type: left_outer
    sql_on: ${campain_sku_shopped.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: capacity_orders {}

explore: car_temp_measurements_alert {
  join: vehicles {
    type: left_outer
    sql_on: ${car_temp_measurements_alert.vehicle_id} = ${vehicles.id} ;;
    relationship: many_to_one
  }
}

explore: case_1_l3 {}

explore: case_2_l3 {}

explore: case_3_l3 {}

explore: cex_user_detail {
  join: user {
    type: left_outer
    sql_on: ${cex_user_detail.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: cex_user_details_112022 {
  join: user {
    type: left_outer
    sql_on: ${cex_user_details_112022.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: checkout_errors {
  join: order {
    type: left_outer
    sql_on: ${checkout_errors.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: checkout_oneclick {
  join: order {
    type: left_outer
    sql_on: ${checkout_oneclick.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${checkout_oneclick.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: clicktrough_rate_agg {}

explore: com_order_pick_position {
  join: product {
    type: left_outer
    sql_on: ${com_order_pick_position.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: combined_supplier_ads {
  join: product {
    type: left_outer
    sql_on: ${combined_supplier_ads.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: commercial_bonus {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${commercial_bonus.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: commercial_bonuses {
  join: warehouse_supplier {
    type: left_outer
    sql_on: ${commercial_bonuses.warehouse_supplier_id} = ${warehouse_supplier.id} ;;
    relationship: many_to_one
  }
}

explore: commercial_bonuses_inventory_associations {
  join: commercial_bonuses_periods {
    type: left_outer
    sql_on: ${commercial_bonuses_inventory_associations.commercial_bonuses_periods_id} = ${commercial_bonuses_periods.id} ;;
    relationship: many_to_one
  }

  join: warehouse_inventory {
    type: left_outer
    sql_on: ${commercial_bonuses_inventory_associations.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: commercial_bonuses_periods {}

explore: commercial_bonuses_pricing {}

explore: commercial_data_negopack {}

explore: commercial_order_forecast_accuracy {}

explore: commercial_order_forecast_accuracy_comparison {}

explore: commercial_order_forecast_accuracy_croston {}

explore: commercial_order_forecast_accuracy_model_selection {}

explore: commercial_order_forecast_accuracy_uplift {}

explore: commercial_order_forecast_accuracy_uplift_model_selection {}

explore: commercial_order_forecast_accuracy_weekly {}

explore: commercial_order_forecast_accuracy_weekly_test {}

explore: commercial_order_item {
  join: product {
    type: left_outer
    sql_on: ${commercial_order_item.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: warehouse_inventory {
    type: left_outer
    sql_on: ${commercial_order_item.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }
}

explore: commercial_order_prediction_report {}

explore: commercial_order_tommorow {
  join: stock_position {
    type: left_outer
    sql_on: ${commercial_order_tommorow.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }
}

explore: competitor_price {}

explore: competitor_price_snapshot {}

explore: competitor_price_snapshot_12mnths {}

explore: competitors_pairings {}

explore: competitors_pairings_snapshot {}

explore: control_groups {}

explore: country_mau_summary {}

explore: credit {}

explore: credits_optimization_data {}

explore: crm_perso_user_control_groups {
  join: user {
    type: left_outer
    sql_on: ${crm_perso_user_control_groups.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: custom_field_snapshot {
  join: user {
    type: left_outer
    sql_on: ${custom_field_snapshot.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: customer_base_evaluation {}

explore: customer_churn_segment_in_months {}

explore: customer_last_segment {}

explore: customer_profile {
  join: user {
    type: left_outer
    sql_on: ${customer_profile.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: customer_profile_impression {
  join: user {
    type: left_outer
    sql_on: ${customer_profile_impression.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: customer_profile_impressions {}

explore: customer_profile_orders {}

explore: customer_profile_user_split {}

explore: customer_reactivation_in_months {}

explore: customer_segment {}

explore: customer_segment_change {}

explore: customer_segment_change_path_monthly {}

explore: customer_segment_change_path_weekly {}

explore: customer_segment_extended {}

explore: customer_segment_extended_weekly {}

explore: customer_segment_in_months {}

explore: customer_segment_in_weeks {}

explore: customer_segment_in_weeks_alias {}

explore: customer_segment_validity {}

explore: customer_status_reactive_date {}

explore: daktela {}

explore: daktela_call_center_evaluation {
  join: user {
    type: left_outer
    sql_on: ${daktela_call_center_evaluation.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: daktela_logging {}

explore: data_pipeline_advertisement_test {}

explore: data_pipeline_period_advertisement_test {}

explore: datacruite_questionnaire {}

explore: delay_responsible {}

explore: delivery_conditions {
  join: order {
    type: left_outer
    sql_on: ${delivery_conditions.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: delivery_conditions_future {
  join: product {
    type: left_outer
    sql_on: ${delivery_conditions_future.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: delivery_slot_order_count_forecast {}

explore: despatch_advice_no_sku {}

explore: dev_order_forecast_daily_predictions {}

explore: direct_pairings_report {
  join: product {
    type: left_outer
    sql_on: ${direct_pairings_report.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: edi_penetration {}

explore: eligible_customers {
  join: user {
    type: left_outer
    sql_on: ${eligible_customers.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: eligible_customers_detail {
  join: user {
    type: left_outer
    sql_on: ${eligible_customers_detail.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: end_month_week_dates {}

explore: error_types {
  join: order {
    type: left_outer
    sql_on: ${error_types.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: eszter {}

explore: eval_order_predictions {}

explore: eval_order_predictions_backup {}

explore: event_item_app {
  join: user {
    type: left_outer
    sql_on: ${event_item_app.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: event_item_web {
  join: user {
    type: left_outer
    sql_on: ${event_item_web.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: exit_rate {}

explore: feature_users_ab_test {}

explore: finance_supplier_invoice {}

explore: finance_supplier_invoice_items {
  join: product {
    type: left_outer
    sql_on: ${finance_supplier_invoice_items.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: food_bank_final_weight {
  join: product {
    type: left_outer
    sql_on: ${food_bank_final_weight.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: food_collection_ukraine {
  join: product {
    type: left_outer
    sql_on: ${food_collection_ukraine.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: forecast_accuracy {}

explore: forecast_accuracy_seasonality {}

explore: ftu_buyer_types {
  join: user {
    type: left_outer
    sql_on: ${ftu_buyer_types.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: goals_for_sharp_metrics_tettra {}

explore: happy_plates {}

explore: heartbeat {}

explore: hiring_processes {}

explore: homepage_abc_test_evaluation {
  join: user {
    type: left_outer
    sql_on: ${homepage_abc_test_evaluation.user_id} = ${user.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${homepage_abc_test_evaluation.order_id} = ${order.id} ;;
    relationship: many_to_one
  }
}

explore: homepage_product_order {
  join: product {
    type: left_outer
    sql_on: ${homepage_product_order.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: hourly_forecast {}

explore: hourly_orders_evaluation {}

explore: hris_comparing {}

explore: inbound_forecast {}

explore: inbound_forecast_accuracy {}

explore: inbound_forecast_new {}

explore: items_evaluation {
  join: order {
    type: left_outer
    sql_on: ${items_evaluation.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: items_evaluation_last {
  join: order {
    type: left_outer
    sql_on: ${items_evaluation_last.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${items_evaluation_last.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: kpi_report {}

explore: kpi_report_precalculated_monthly {}

explore: kpi_report_precalculated_yearly {}

explore: kpi_report_snapshot {}

explore: l1_cohorts {}

explore: l2_categories_total {}

explore: l3_categories_total {}

explore: lm_pilot_report {}

explore: logistic_courier_vehicles {
  join: vehicles {
    type: left_outer
    sql_on: ${logistic_courier_vehicles.vehicle_id} = ${vehicles.id} ;;
    relationship: many_to_one
  }
}

explore: logistic_order {
  join: order {
    type: left_outer
    sql_on: ${logistic_order.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: logistic_route {}

explore: longterm_daily_slots_availability {}

explore: lov_commercial_bonuses {}

explore: low_conversion_search_daily {}

explore: loyalty_pilot_funnel_in_weeks {}

explore: loyalty_ranking {}

explore: loyalty_ranking_sku {}

explore: loyalty_reward {}

explore: loyalty_scheme_abtests {
  join: user {
    type: left_outer
    sql_on: ${loyalty_scheme_abtests.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: loyalty_schemes_abtest_conversions {}

explore: loyalty_user_challenge_comparison {}

explore: loyalty_user_challenge_pilot {}

explore: mailing_detail {}

explore: mailing_detail_all {
  join: user {
    type: left_outer
    sql_on: ${mailing_detail_all.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: margin_increase_program {}

explore: market_orders {}

explore: master_data_completeness {}

explore: master_data_completeness_snapshot {}

explore: master_efficiency {}

explore: matched_report_timeline {}

explore: meal_tickets {
  join: user {
    type: left_outer
    sql_on: ${meal_tickets.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: message_history {}

explore: minimum_prices {}

explore: mobile_camp_analysis_product_level {
  join: product {
    type: left_outer
    sql_on: ${mobile_camp_analysis_product_level.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: mobile_campaign_agg {}

explore: mobile_campaign_self_service_evaluation {
  join: product {
    type: left_outer
    sql_on: ${mobile_campaign_self_service_evaluation.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: mobile_campaign_self_service_segment_evaluation {}

explore: mobile_exits {
  join: order {
    type: left_outer
    sql_on: ${mobile_exits.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${mobile_exits.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: mystery_item_evaluation_last {
  join: order {
    type: left_outer
    sql_on: ${mystery_item_evaluation_last.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: mystery_order_evaluation_last {
  join: order {
    type: left_outer
    sql_on: ${mystery_order_evaluation_last.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: nb_shelf_report {
  join: picking_item {
    type: left_outer
    sql_on: ${nb_shelf_report.picking_item_id} = ${picking_item.picking_item_id} ;;
    relationship: many_to_one
  }

  join: warehouse_inventory {
    type: left_outer
    sql_on: ${nb_shelf_report.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${nb_shelf_report.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: negative_margin_report {}

explore: new_hp_report {}

explore: new_hp_report_20211111120224 {}

explore: new_products_visibility_agg {}

explore: newsletter_blacklist_current {}

explore: newsletter_blacklist_manual {}

explore: newsletter_blacklist_sort {}

explore: nielsen_drug {}

explore: nielsen_food {}

explore: nielsen_sales_drug {}

explore: nielsen_sales_food {}

explore: noname_triggered_campaign {}

explore: nps_11_2022 {
  join: user {
    type: left_outer
    sql_on: ${nps_11_2022.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: nps_responses_all_11_2022 {
  join: user {
    type: left_outer
    sql_on: ${nps_responses_all_11_2022.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: number_of_pairings {}

explore: om_data_compare {
  join: product {
    type: left_outer
    sql_on: ${om_data_compare.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: onboarding_user_flow_list {}

explore: order {
  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: order_baby_club {}

explore: order_categories {}

explore: order_daily_forecast_view {}

explore: order_delay_calculated {}

explore: order_evaluation {
  join: order {
    type: left_outer
    sql_on: ${order_evaluation.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: order_evaluation_last {
  join: order {
    type: left_outer
    sql_on: ${order_evaluation_last.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: order_fc_baseline {}

explore: order_fc_warehouse_capacity {}

explore: order_field_binding {}

explore: order_fields_pharmacy {
  join: product {
    type: left_outer
    sql_on: ${order_fields_pharmacy.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: warehouse_inventory {
    type: left_outer
    sql_on: ${order_fields_pharmacy.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }
}

explore: order_forecast {}

explore: order_forecast_actual_orders {}

explore: order_forecast_by_time_predictions {}

explore: order_forecast_by_time_predictions_old {}

explore: order_forecast_capacity {}

explore: order_forecast_components {}

explore: order_forecast_daily_longterm {}

explore: order_forecast_daily_predictions {}

explore: order_forecast_daily_predictions_debug {}

explore: order_forecast_daily_predictions_tmp {}

explore: order_forecast_daily_shape {}

explore: order_forecast_evaluation {}

explore: order_forecast_hourly {}

explore: order_forecast_models {}

explore: order_forecast_prediction {}

explore: order_forecast_realtime_predictions {}

explore: order_forecast_realtime_snapshot {}

explore: order_forecast_realtime_snapshot_v2 {}

explore: order_forecast_snapshot {}

explore: order_forecast_today_capacity {}

explore: order_hourly_forecast_view {}

explore: order_origin {}

explore: order_orign {}

explore: order_payment_change_history {
  join: order {
    type: left_outer
    sql_on: ${order_payment_change_history.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: order_plan {}

explore: order_plan_evaluation {}

explore: order_plan_view {}

explore: order_route_delay {}

explore: order_senior_club {}

explore: order_time_change {
  join: order {
    type: left_outer
    sql_on: ${order_time_change.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: order_to_pick {}

explore: order_to_pick_last_30d {
  join: product {
    type: left_outer
    sql_on: ${order_to_pick_last_30d.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: warehouse_inventory {
    type: left_outer
    sql_on: ${order_to_pick_last_30d.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }
}

explore: order_to_pick_skus_selected {}

explore: order_to_pick_snapshot {}

explore: orders_slots {}

explore: out_city_warehouse_capacity {}

explore: out_commercial_order_forecast_accuracy_internal {}

explore: out_commercial_order_forecast_accuracy_slow_movers {}

explore: out_quick_report {}

explore: out_quick_report_2 {}

explore: out_quick_report_2_alias {}

explore: out_sum_nr_by_level_up3 {}

explore: out_warehouse_reallocation {}

explore: payment_checks {}

explore: payment_source_detail {}

explore: pbl_couriers_customers {
  join: user {
    type: left_outer
    sql_on: ${pbl_couriers_customers.user_id} = ${user.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${pbl_couriers_customers.order_id} = ${order.id} ;;
    relationship: many_to_one
  }
}

explore: penetrations_sku_level {
  join: product {
    type: left_outer
    sql_on: ${penetrations_sku_level.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: penetrations_supplier_level {}

explore: performance_target {}

explore: perso_control_split {}

explore: personalization_abtest {}

explore: personalization_backup_history_long {}

explore: personalization_backup_history_wide {}

explore: personalization_picking_items {}

explore: personalization_reporting {
  join: user {
    type: left_outer
    sql_on: ${personalization_reporting.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: personalization_reporting_insp_belt {
  join: user {
    type: left_outer
    sql_on: ${personalization_reporting_insp_belt.user_id} = ${user.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${personalization_reporting_insp_belt.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${personalization_reporting_insp_belt.order_id} = ${order.id} ;;
    relationship: many_to_one
  }
}

explore: personalization_source_group {}

explore: picker_walking_distance {}

explore: picking_item {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${picking_item.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${picking_item.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: pilot_assortment {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${pilot_assortment.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${pilot_assortment.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }
}

explore: pl_package_ranking {}

explore: platform_loyalty_on_orders {}

explore: playlist_engagement {}

explore: premium_benefit_usage {}

explore: premium_days {}

explore: premium_event_flow {
  join: user {
    type: left_outer
    sql_on: ${premium_event_flow.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: premium_event_flow_segment {
  join: user {
    type: left_outer
    sql_on: ${premium_event_flow_segment.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: premium_events_on_touchpoints {
  join: user {
    type: left_outer
    sql_on: ${premium_events_on_touchpoints.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: premium_free_to_paid_onboarding {}

explore: premium_membership_churn {}

explore: premium_segmentation {
  join: user {
    type: left_outer
    sql_on: ${premium_segmentation.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: premium_segmentation_day {}

explore: premium_segmentation_month {}

explore: premium_vouchers_daily {}

explore: price_changes_report {}

explore: price_history {
  join: product {
    type: left_outer
    sql_on: ${price_history.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: warehouse_inventory {
    type: left_outer
    sql_on: ${price_history.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }
}

explore: price_sensitivity_last_week {}

explore: price_suggestion_monitoring_v2 {}

explore: price_suggestions_report {}

explore: workspace_233686783_pricing_guardrails_case_1_l2 {}

explore: pricing_guardrails_case_1_l3 {}

explore: workspace_233686783_pricing_guardrails_case_2_l2 {}

explore: workspace_233686783_pricing_guardrails_case_2_l3 {}

explore: workspace_233686783_pricing_guardrails_case_3_l2 {}


explore: pricing_guardrails_case_3_l3 {}

explore: pricing_guardrails_price_ledder {}

explore: pricing_policy {}

explore: pricing_policy_sharp_metrics {}

explore: pricing_policy_sharp_metrics_snapshot {}

explore: pricing_policy_snapshot {}

explore: pricing_suggestion_monitoring {}

explore: product {}

explore: product_categories_layout_ab_test {}

explore: product_measures_reporting {}

explore: product_measures_reporting_backup {}

explore: product_pallet_and_layer {}

explore: product_split_abc {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${product_split_abc.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${product_split_abc.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }
}

explore: purchase_funnel_items {}

explore: purchase_funnel_milestone_web {}

explore: quick_competitor_report {}

explore: quick_report_2 {}

explore: realtime_order_fc_evaluation {}

explore: realtime_order_fc_evaluation_this_week {}

explore: realtime_order_fc_snapshot_v1 {}

explore: realtime_order_fc_snapshot_v2 {}

explore: received_item {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${received_item.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: recipe_performance {
  join: user {
    type: left_outer
    sql_on: ${recipe_performance.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: recipes_availability {
  join: product {
    type: left_outer
    sql_on: ${recipes_availability.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: recurrent_payment_scheduler {
  join: user {
    type: left_outer
    sql_on: ${recurrent_payment_scheduler.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: report_slots_sku_overview {}

explore: report_slots_zones_limit {}

explore: reusable_bags_move {
  join: order {
    type: left_outer
    sql_on: ${reusable_bags_move.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${reusable_bags_move.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: reusable_bags_user_balance {
  join: user {
    type: left_outer
    sql_on: ${reusable_bags_user_balance.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: reusable_bags_user_deposit {
  join: order {
    type: left_outer
    sql_on: ${reusable_bags_user_deposit.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${reusable_bags_user_deposit.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: romania_pairing_report {}

explore: route_delay_calculated {}

explore: sailthrou_ad_hoc_flow_campaign {}

explore: sailthrou_ad_hoc_flow_prodcut_level {
  join: product {
    type: left_outer
    sql_on: ${sailthrou_ad_hoc_flow_prodcut_level.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: sailthrou_ad_hoc_flow_product_level {
  join: product {
    type: left_outer
    sql_on: ${sailthrou_ad_hoc_flow_product_level.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: sailthrou_ad_hoc_flow_self_service_evaluation {}

explore: sailthrou_auto_flow_campaign {}

explore: sailthrou_auto_flow_campaign_longterm_analysis {}

explore: sailthrou_self_service_adhoc_flow {}

explore: sailthru_auto_flow_self_service_evaluation {}

explore: sbirka_potravin_jaro_2022_vahy {
  join: product {
    type: left_outer
    sql_on: ${sbirka_potravin_jaro_2022_vahy.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: scr_visual {}

explore: search_conversion_rate_evaluated_total {}

explore: search_conversion_rate_evaluated_total_v2 {}

explore: search_conversions {}

explore: search_conversions_agg {}

explore: search_final {}

explore: search_no_results_agg {}

explore: search_no_results_count {}

explore: search_no_results_detail {}

explore: search_top25_terms {}

explore: self_service_target_control_evaluation {
  join: user {
    type: left_outer
    sql_on: ${self_service_target_control_evaluation.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: senior_club {}

explore: sentiment {
  join: order {
    type: left_outer
    sql_on: ${sentiment.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: shopping_lists_agg {}

explore: shrinkage {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${shrinkage.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: skuudle_assortment_vs_competitor_prices {}

explore: skuudle_received_products {}

explore: slots_overview_hourly {}

explore: slow_movers_orders_availability {}

explore: sm_check {}

explore: source_description {}

explore: source_group {}

explore: source_overview_ab_test {}

explore: source_overview_agg {}

explore: srst {
  join: order {
    type: left_outer
    sql_on: ${srst.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: staging604a0ee1d21fc {
  join: picking_item {
    type: left_outer
    sql_on: ${staging604a0ee1d21fc.picking_item_id} = ${picking_item.picking_item_id} ;;
    relationship: many_to_one
  }

  join: warehouse_inventory {
    type: left_outer
    sql_on: ${staging604a0ee1d21fc.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${staging604a0ee1d21fc.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: staging606f3c07825de {
  join: order {
    type: left_outer
    sql_on: ${staging606f3c07825de.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: staging60d099c2acd3e {
  join: picking_item {
    type: left_outer
    sql_on: ${staging60d099c2acd3e.picking_item_id} = ${picking_item.picking_item_id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${staging60d099c2acd3e.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: warehouse_inventory {
    type: left_outer
    sql_on: ${staging60d099c2acd3e.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: staging60d2d1b69651e {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${staging60d2d1b69651e.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: staging6143f5dcdc28e {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${staging6143f5dcdc28e.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: staging614ddd3751cbe {
  join: user {
    type: left_outer
    sql_on: ${staging614ddd3751cbe.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: staging61c427f894de6 {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${staging61c427f894de6.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${staging61c427f894de6.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: picking_item {
    type: left_outer
    sql_on: ${staging61c427f894de6.picking_item_id} = ${picking_item.picking_item_id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: staging61cc8647d6fc1 {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${staging61cc8647d6fc1.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: picking_item {
    type: left_outer
    sql_on: ${staging61cc8647d6fc1.picking_item_id} = ${picking_item.picking_item_id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${staging61cc8647d6fc1.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: staging61dd9c1f826c7 {
  join: order {
    type: left_outer
    sql_on: ${staging61dd9c1f826c7.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${staging61dd9c1f826c7.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: staging61e56f3222fa9 {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${staging61e56f3222fa9.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: staging6254014137858 {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${staging6254014137858.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: staging6254018976a34 {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${staging6254018976a34.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: staging6271b07ba0be6 {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${staging6271b07ba0be6.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${staging6271b07ba0be6.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }
}

explore: staging6298a1c58e47b {}

explore: staging6315e6bb5304d {}

explore: staging63309e6541c64 {
  join: order {
    type: left_outer
    sql_on: ${staging63309e6541c64.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${staging63309e6541c64.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: staging6368df4d8d34f {}

explore: staging63bd61253e745 {}

explore: staging63bd61259cfd8 {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${staging63bd61259cfd8.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: staging63bd612606568 {}

explore: staging63bd612689b54 {}

explore: staging63bd6126d378a {}

explore: staging63bd6126dfb6d {
  join: order {
    type: left_outer
    sql_on: ${staging63bd6126dfb6d.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${staging63bd6126dfb6d.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: staging63bd6127a3969 {
  join: user {
    type: left_outer
    sql_on: ${staging63bd6127a3969.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: staging63bd6127a5ab8 {}

explore: staging63bd6128786f2 {
  join: order {
    type: left_outer
    sql_on: ${staging63bd6128786f2.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: staging63bd612a0e686 {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${staging63bd612a0e686.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: staging63bd612b3f18c {
  join: product {
    type: left_outer
    sql_on: ${staging63bd612b3f18c.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: warehouse_inventory {
    type: left_outer
    sql_on: ${staging63bd612b3f18c.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }
}

explore: staging63bd6138a8568 {}

explore: staging63bd613998ad2 {}

explore: staging63bd613af160a {}

explore: staging63bd613bc0262 {}

explore: staging63ceb1c89d319 {}

explore: staging6419af31677bb {
  join: product {
    type: left_outer
    sql_on: ${staging6419af31677bb.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: warehouse_inventory {
    type: left_outer
    sql_on: ${staging6419af31677bb.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }
}

explore: stats_detail {}

explore: stock_position {}

explore: supplier_activity_summary {}

explore: supplier_ads_advertisement_brand_metrics {}

explore: supplier_ads_advertisement_details {}

explore: supplier_ads_approving_campaigns {}

explore: supplier_ads_campaign_daily {}

explore: supplier_ads_campaign_details {}

explore: supplier_ads_data_pipeline_advertisement_test {}

explore: supplier_ads_data_pipeline_period_advertisement_test {}

explore: supplier_ads_impression_brand_metrics {}

explore: supplier_ads_impression_details {}

explore: supplier_ads_impression_event_details {}

explore: supplier_ads_inventory {}

explore: supplier_ads_inventory_pivot_v3 {}

explore: supplier_ads_inventory_typeless_v3 {}

explore: supplier_ads_inventory_v2 {}

explore: supplier_ads_inventory_v3 {}

explore: supplier_ads_kpi {}

explore: supplier_ads_kpi_v2 {}

explore: supplier_ads_snapshot_advertiser_stage_count {}

explore: supplier_ads_supplier_brand_metrics {}

explore: supplier_ads_supplier_budget_spend {}

explore: supplier_ads_supplier_lag_summary {}

explore: supplier_country_summary {}

explore: supplier_detail {}

explore: supplier_lag_summary {}

explore: supplier_limit {}

explore: supplier_reliability {
  join: order {
    type: left_outer
    sql_on: ${supplier_reliability.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${supplier_reliability.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: supplier_reservations_orders {
  join: order {
    type: left_outer
    sql_on: ${supplier_reservations_orders.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: supplier_scorecard {}

explore: supply_kpi {}

explore: supply_kpi_replenishments {}

explore: target_control_self_service_evaluation {
  join: user {
    type: left_outer
    sql_on: ${target_control_self_service_evaluation.user_id} = ${user.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${target_control_self_service_evaluation.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: target_control_self_service_segment_evaluation {
  join: user {
    type: left_outer
    sql_on: ${target_control_self_service_segment_evaluation.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: tibco_replenishment {}

explore: tibco_shrink {}

explore: time_on_checkout_payment_details {}

explore: tmp_test_evaluation {
  join: order {
    type: left_outer
    sql_on: ${tmp_test_evaluation.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: tool_datasource {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${tool_datasource.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: transaction_extended {}

explore: triggered_campaign_evaluation {}

explore: triggered_campaign_history_all {
  join: user {
    type: left_outer
    sql_on: ${triggered_campaign_history_all.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: triggered_sku_shopped {
  join: user {
    type: left_outer
    sql_on: ${triggered_sku_shopped.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: triggered_users_group_duplicity {}

explore: unpicked_reservation {}

explore: upsell_checkout_ftus_ab_test {}

explore: user {}

explore: user_app_vs_web_90 {}

explore: user_characteristics {}

explore: user_chef_orders_90days {}

explore: user_child {
  join: user {
    type: left_outer
    sql_on: ${user_child.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: user_current_premium_status {}

explore: user_current_premium_status_snapshot {}

explore: user_custom_fields {
  join: user {
    type: left_outer
    sql_on: ${user_custom_fields.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: user_emails_count_30d {}

explore: user_engagement_page_behaviour {}

explore: user_l2 {}

explore: user_l2_fresh {}

explore: user_l3 {}

explore: user_l3_fresh {}

explore: user_login_screen_view_app {}

explore: user_login_screen_view_app_alias {}

explore: user_orders_origin_90days {}

explore: user_premium_newprofile_abtest {}

explore: user_premium_sale_action {
  join: user {
    type: left_outer
    sql_on: ${user_premium_sale_action.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: user_referral {}

explore: user_referral_share {}

explore: user_registration_platform {}

explore: user_retention {
  join: user {
    type: left_outer
    sql_on: ${user_retention.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: user_sailthru_profile_30d {}

explore: user_sessions_summary {}

explore: user_welcome_page_conversion {}

explore: vehicles {}

explore: vendor_budget_daily {}

explore: vendor_budget_report {}

explore: virtual_order_payment_details {
  join: user {
    type: left_outer
    sql_on: ${virtual_order_payment_details.user_id} = ${user.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${virtual_order_payment_details.order_id} = ${order.id} ;;
    relationship: many_to_one
  }
}

explore: virtual_order_payment_methods {
  join: user {
    type: left_outer
    sql_on: ${virtual_order_payment_methods.user_id} = ${user.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${virtual_order_payment_methods.order_id} = ${order.id} ;;
    relationship: many_to_one
  }
}

explore: vouchers_activated {
  join: user {
    type: left_outer
    sql_on: ${vouchers_activated.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: vouchers_sold {
  join: user {
    type: left_outer
    sql_on: ${vouchers_sold.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: wapi_access_token {
  join: user {
    type: left_outer
    sql_on: ${wapi_access_token.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: wapi_bags_audit_routes {
  join: order {
    type: left_outer
    sql_on: ${wapi_bags_audit_routes.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: wapi_crate_audit {
  join: order {
    type: left_outer
    sql_on: ${wapi_crate_audit.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: warehouse_activities_machine {}

explore: warehouse_entrance_allocation {
  join: user {
    type: left_outer
    sql_on: ${warehouse_entrance_allocation.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: warehouse_inventory {
  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: warehouse_inventory_from_lvl1 {
  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory_from_lvl1.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }
}

explore: warehouse_inventory_penetration {}

explore: warehouse_inventory_snapshot {
  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory_snapshot.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: warehouse_inventory {
    type: left_outer
    sql_on: ${warehouse_inventory_snapshot.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }
}

explore: warehouse_inventory_snapshot_filtered {
  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory_snapshot_filtered.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: warehouse_inventory {
    type: left_outer
    sql_on: ${warehouse_inventory_snapshot_filtered.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }
}

explore: warehouse_performance {
  join: user {
    type: left_outer
    sql_on: ${warehouse_performance.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: warehouse_reallocation {}

explore: warehouse_registration {}

explore: warehouse_replacement_with_ticket {
  join: order {
    type: left_outer
    sql_on: ${warehouse_replacement_with_ticket.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${order.user_id} = ${user.id} ;;
    relationship: many_to_one
  }
}

explore: warehouse_stock_position_value {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${warehouse_stock_position_value.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_stock_position_value.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }
}

explore: warehouse_stock_position_value_snapshot {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${warehouse_stock_position_value_snapshot.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_stock_position_value_snapshot.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }
}

explore: warehouse_supplier {}

explore: warranty_claim_product {
  join: warehouse_inventory {
    type: left_outer
    sql_on: ${warranty_claim_product.warehouse_inventory_id} = ${warehouse_inventory.id} ;;
    relationship: many_to_one
  }

  join: stock_position {
    type: left_outer
    sql_on: ${warehouse_inventory.stock_position_id} = ${stock_position.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${warehouse_inventory.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: web_app_filters {}

explore: web_homepage_ab_test_evaluation {
  join: user {
    type: left_outer
    sql_on: ${web_homepage_ab_test_evaluation.user_id} = ${user.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${web_homepage_ab_test_evaluation.order_id} = ${order.id} ;;
    relationship: many_to_one
  }
}

explore: xsell_upsell_emails {}
