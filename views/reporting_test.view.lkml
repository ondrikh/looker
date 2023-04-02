# The name of this view in Looker is "Reporting Test"
view: reporting_test {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: rohlik_prod.reporting_test ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amount" in Explore.

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: avg_forecast_coverage {
    type: number
    sql: ${TABLE}.avg_forecast_coverage ;;
  }

  dimension: avg_sold_cov {
    type: number
    sql: ${TABLE}.avg_sold_cov ;;
  }

  dimension: claimed_amount_invalid_expiration {
    type: number
    sql: ${TABLE}.claimed_amount_invalid_expiration ;;
  }

  dimension: claimed_amount_noq {
    type: number
    sql: ${TABLE}.claimed_amount_noq ;;
  }

  dimension: correction_amount {
    type: number
    sql: ${TABLE}.correction_amount ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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
    sql: ${TABLE}.create_date ;;
  }

  dimension: days_till_next_delivery_sku {
    type: number
    sql: ${TABLE}.days_till_next_delivery_sku ;;
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
    sql: ${TABLE}.deliver_at ;;
  }

  dimension: delivered_in_booked {
    type: string
    sql: ${TABLE}.delivered_in_booked ;;
  }

  dimension: delivery_days_plus {
    type: number
    sql: ${TABLE}.delivery_days_plus ;;
  }

  dimension: delivery_time {
    type: string
    sql: ${TABLE}.delivery_time ;;
  }

  dimension: durability_days {
    type: number
    sql: ${TABLE}.durability_days ;;
  }

  dimension: error_name_invalid_expiration {
    type: string
    sql: ${TABLE}.error_name_invalid_expiration ;;
  }

  dimension: error_name_noq {
    type: string
    sql: ${TABLE}.error_name_noq ;;
  }

  dimension: generate_day {
    type: number
    sql: ${TABLE}.generate_day ;;
  }

  dimension: generate_time {
    type: string
    sql: ${TABLE}.generate_time ;;
  }

  dimension: generated_wanted_count {
    type: number
    sql: ${TABLE}.generated_wanted_count ;;
  }

  dimension: in_stock_after_xy_minutes {
    type: number
    sql: ${TABLE}.in_stock_after_xy_minutes ;;
  }

  dimension: inventory_id {
    type: number
    sql: ${TABLE}.inventory_id ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}.L1_category_name ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}.L2_category_name ;;
  }

  dimension: main_root_cause {
    type: string
    sql: ${TABLE}.main_root_cause ;;
  }

  dimension: min_order_kg {
    type: number
    sql: ${TABLE}.min_order_kg ;;
  }

  dimension: min_order_pack {
    type: number
    sql: ${TABLE}.min_order_pack ;;
  }

  dimension: min_order_pallet {
    type: number
    sql: ${TABLE}.min_order_pallet ;;
  }

  dimension: no_action_forecast_amount {
    type: number
    sql: ${TABLE}.no_action_forecast_amount ;;
  }

  dimension: order_count_pieces {
    type: number
    sql: ${TABLE}.order_count_pieces ;;
  }

  dimension: order_kilogram_count {
    type: number
    sql: ${TABLE}.order_kilogram_count ;;
  }

  dimension: order_pack_count {
    type: number
    sql: ${TABLE}.order_pack_count ;;
  }

  dimension: order_pallets {
    type: number
    sql: ${TABLE}.order_pallets ;;
  }

  dimension: order_unit {
    type: string
    sql: ${TABLE}.order_unit ;;
  }

  dimension: order_weight_kg {
    type: number
    sql: ${TABLE}.order_weight_kg ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: parent_order_id {
    type: string
    sql: ${TABLE}.parent_order_id ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: rc_bad_quality {
    type: string
    sql: ${TABLE}.RC_bad_quality ;;
  }

  dimension: rc_bad_quality_fresh_products {
    type: string
    sql: ${TABLE}.RC_bad_quality_fresh_products ;;
  }

  dimension: rc_increased_customer_demand {
    type: string
    sql: ${TABLE}.RC_Increased_customer_demand ;;
  }

  dimension: rc_increased_promo_demand {
    type: string
    sql: ${TABLE}.RC_Increased_promo_demand ;;
  }

  dimension: rc_late_delivery {
    type: string
    sql: ${TABLE}.RC_late_delivery ;;
  }

  dimension: rc_late_goods_receiving {
    type: string
    sql: ${TABLE}.RC_Late_Goods_Receiving ;;
  }

  dimension: rc_low_or_non_predicted_demand {
    type: string
    sql: ${TABLE}.RC_Low_or_non_predicted_demand ;;
  }

  dimension: rc_low_or_non_predicted_promo_items {
    type: string
    sql: ${TABLE}.RC_Low_or_non_predicted_promo_items ;;
  }

  dimension: rc_no_delivery {
    type: string
    sql: ${TABLE}.RC_no_delivery ;;
  }

  dimension: rc_order_not_sent {
    type: string
    sql: ${TABLE}.RC_Order_Not_Sent ;;
  }

  dimension: rc_order_reduction {
    type: string
    sql: ${TABLE}.RC_order_reduction ;;
  }

  dimension: rc_ordering_template_missing {
    type: string
    sql: ${TABLE}.RC_Ordering_Template_Missing ;;
  }

  dimension: rc_other {
    type: string
    sql: ${TABLE}.RC_other ;;
  }

  dimension: rc_partial_delivery {
    type: string
    sql: ${TABLE}.RC_partial_delivery ;;
  }

  dimension: rc_pharmacy {
    type: string
    sql: ${TABLE}.RC_Pharmacy ;;
  }

  dimension: rc_replenishment_frequency {
    type: string
    sql: ${TABLE}.RC_Replenishment_Frequency ;;
  }

  dimension: rc_shelf_life_issue {
    type: string
    sql: ${TABLE}.RC_shelf_life_issue ;;
  }

  dimension: rc_stock_coverage {
    type: string
    sql: ${TABLE}.RC_stock_coverage ;;
  }

  dimension: rc_stock_reduction {
    type: string
    sql: ${TABLE}.RC_Stock_Reduction ;;
  }

  dimension: rc_supplier_moq {
    type: string
    sql: ${TABLE}.RC_Supplier_MOQ ;;
  }

  dimension: replenishment_amount {
    type: number
    sql: ${TABLE}.replenishment_amount ;;
  }

  dimension: request_id {
    type: number
    sql: ${TABLE}.request_id ;;
  }

  dimension: responsible_user {
    type: string
    sql: ${TABLE}.responsible_user ;;
  }

  dimension: sold {
    type: number
    sql: ${TABLE}.sold ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: sum_forecast_coverage {
    type: number
    sql: ${TABLE}.sum_forecast_coverage ;;
  }

  dimension: supplier_id {
    type: number
    sql: ${TABLE}.supplier_id ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}.supplier_name ;;
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
    sql: ${TABLE}.supply_delivery_time ;;
  }

  dimension: temp_mode {
    type: string
    sql: ${TABLE}.temp_mode ;;
  }

  dimension: template_id {
    type: number
    sql: ${TABLE}.template_id ;;
  }

  dimension: type_invalid_expiration {
    type: number
    sql: ${TABLE}.type_invalid_expiration ;;
  }

  dimension: type_noq {
    type: number
    sql: ${TABLE}.type_noq ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}.unit ;;
  }

  dimension: wanted_count {
    type: number
    sql: ${TABLE}.wanted_count ;;
  }

  dimension: warehouse_id {
    type: number
    sql: ${TABLE}.warehouse_id ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}.warehouse_name ;;
  }

  measure: count {
    type: count
    drill_fields: [l1_category_name, l2_category_name, product_name, supplier_name, warehouse_name]
  }
}
