view: commercial_order_item {
  sql_table_name: "WORKSPACE_233686783"."commercial_order_item"
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

  dimension: availability {
    type: number
    sql: ${TABLE}."availability" ;;
  }

  dimension: average_sold {
    type: number
    sql: ${TABLE}."average_sold" ;;
  }

  dimension: commercial_order_id {
    type: string
    sql: ${TABLE}."commercial_order_id" ;;
  }

  dimension: commercial_order_unique_id {
    type: string
    sql: ${TABLE}."commercial_order_unique_id" ;;
  }

  dimension: contract_price_is_action {
    type: string
    sql: ${TABLE}."contract_price_is_action" ;;
  }

  dimension: contract_purchasing_price {
    type: number
    sql: ${TABLE}."contract_purchasing_price" ;;
  }

  dimension: contract_purchasing_price_unit {
    type: string
    sql: ${TABLE}."contract_purchasing_price_unit" ;;
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
    type: number
    sql: ${TABLE}."day_count" ;;
  }

  dimension: delay_reservations {
    type: number
    sql: ${TABLE}."delay_reservations" ;;
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

  dimension: delivery_time {
    type: string
    sql: ${TABLE}."delivery_time" ;;
  }

  dimension: durability_days {
    type: number
    sql: ${TABLE}."durability_days" ;;
  }

  dimension: error_generate_cant_generate {
    type: number
    sql: ${TABLE}."error_generate_cant_generate" ;;
  }

  dimension: error_generate_template_not_found {
    type: number
    sql: ${TABLE}."error_generate_template_not_found" ;;
  }

  dimension: error_previous_order_undelivered {
    type: number
    sql: ${TABLE}."error_previous_order_undelivered" ;;
  }

  dimension: error_previous_order_wrong_count {
    type: number
    sql: ${TABLE}."error_previous_order_wrong_count" ;;
  }

  dimension: error_send_approval_needed {
    type: number
    sql: ${TABLE}."error_send_approval_needed" ;;
  }

  dimension: error_send_channel_edi {
    type: number
    sql: ${TABLE}."error_send_channel_edi" ;;
  }

  dimension: error_send_channel_non_edi {
    type: number
    sql: ${TABLE}."error_send_channel_non_edi" ;;
  }

  dimension: error_send_count_suspicious {
    type: number
    sql: ${TABLE}."error_send_count_suspicious" ;;
  }

  dimension: error_send_holiday_delivery {
    type: number
    sql: ${TABLE}."error_send_holiday_delivery" ;;
  }

  dimension: error_send_holiday_generate {
    type: number
    sql: ${TABLE}."error_send_holiday_generate" ;;
  }

  dimension: error_send_item_in_action {
    type: number
    sql: ${TABLE}."error_send_item_in_action" ;;
  }

  dimension: error_send_low_availability {
    type: number
    sql: ${TABLE}."error_send_low_availability" ;;
  }

  dimension: error_send_lower_than_min {
    type: number
    sql: ${TABLE}."error_send_lower_than_min" ;;
  }

  dimension: error_send_mkt_comm_item {
    type: number
    sql: ${TABLE}."error_send_mkt_comm_item" ;;
  }

  dimension: error_send_new_item {
    type: number
    sql: ${TABLE}."error_send_new_item" ;;
  }

  dimension: error_send_no_channel {
    type: number
    sql: ${TABLE}."error_send_no_channel" ;;
  }

  dimension: error_send_no_pref_pack {
    type: number
    sql: ${TABLE}."error_send_no_pref_pack" ;;
  }

  dimension: error_send_no_static_order {
    type: number
    sql: ${TABLE}."error_send_no_static_order" ;;
  }

  dimension: error_send_order_suspicious_ex {
    type: number
    sql: ${TABLE}."error_send_order_suspicious_ex" ;;
  }

  dimension: error_send_pack_round_down {
    type: number
    sql: ${TABLE}."error_send_pack_round_down" ;;
  }

  dimension: error_send_problem_item {
    type: number
    sql: ${TABLE}."error_send_problem_item" ;;
  }

  dimension: error_send_purple_item {
    type: number
    sql: ${TABLE}."error_send_purple_item" ;;
  }

  dimension: error_send_supplier_not_found {
    type: number
    sql: ${TABLE}."error_send_supplier_not_found" ;;
  }

  dimension: essential {
    type: string
    sql: ${TABLE}."essential" ;;
  }

  dimension: generated_wanted_count {
    type: number
    sql: ${TABLE}."generated_wanted_count" ;;
  }

  dimension: hard_essential {
    type: string
    sql: ${TABLE}."hard_essential" ;;
  }

  dimension: has_problem {
    type: number
    sql: ${TABLE}."has_problem" ;;
  }

  dimension: is_autosend {
    type: number
    sql: ${TABLE}."is_autosend" ;;
  }

  dimension: last_order_count {
    type: number
    sql: ${TABLE}."last_order_count" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: new_product {
    type: string
    sql: ${TABLE}."new_product" ;;
  }

  dimension: order_count {
    type: number
    sql: ${TABLE}."order_count" ;;
  }

  dimension: order_count_pieces {
    type: number
    sql: ${TABLE}."order_count_pieces" ;;
  }

  dimension: order_kilogram_count {
    type: number
    sql: ${TABLE}."order_kilogram_count" ;;
  }

  dimension: order_unit {
    type: string
    sql: ${TABLE}."order_unit" ;;
  }

  dimension: predicted_amount_in_stock {
    type: number
    sql: ${TABLE}."predicted_amount_in_stock" ;;
  }

  dimension: predicted_count {
    type: number
    sql: ${TABLE}."predicted_count" ;;
  }

  dimension: predicted_count_test {
    type: number
    sql: ${TABLE}."predicted_count_test" ;;
  }

  dimension: problem {
    type: string
    sql: ${TABLE}."problem" ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."product_id" ;;
  }

  dimension: product_problem {
    type: string
    sql: ${TABLE}."product_problem" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: shrink {
    type: number
    sql: ${TABLE}."shrink" ;;
  }

  dimension: sold_week {
    type: number
    sql: ${TABLE}."sold_week" ;;
  }

  dimension: start_day {
    type: number
    sql: ${TABLE}."start_day" ;;
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

  dimension: supplier_unique_id {
    type: string
    sql: ${TABLE}."supplier_unique_id" ;;
  }

  dimension: template_id {
    type: string
    sql: ${TABLE}."template_id" ;;
  }

  dimension: template_name {
    type: string
    sql: ${TABLE}."template_name" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}."user" ;;
  }

  dimension: wanted_count {
    type: number
    sql: ${TABLE}."wanted_count" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_inventory_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."warehouse_inventory_id" ;;
  }

  dimension: warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."warehouse_inventory_unique_id" ;;
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
      id,
      name,
      template_name,
      supplier_name,
      product.name,
      product.l2_category_name,
      product.product_family_name,
      product.l4_category_name,
      product.id,
      product.l5_category_name,
      product.l1_category_name,
      product.l3_category_name,
      warehouse_inventory.warehouse_name,
      warehouse_inventory.id,
      warehouse_inventory.country_of_origin_name,
      warehouse_inventory.primary_supplier_name
    ]
  }
}
