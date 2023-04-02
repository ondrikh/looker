view: order_to_pick_last_30d {
  sql_table_name: "WORKSPACE_233686783"."order_to_pick_last_30d"
    ;;

  dimension: abc_split {
    type: string
    sql: ${TABLE}."abc_split" ;;
  }

  dimension: amount_in_buffer {
    type: number
    sql: ${TABLE}."amount_in_buffer" ;;
  }

  dimension: amount_in_stock {
    type: number
    sql: ${TABLE}."amount_in_stock" ;;
  }

  dimension: available_amount {
    type: number
    sql: ${TABLE}."available_amount" ;;
  }

  dimension: available_value_excl_vat_eur {
    type: number
    sql: ${TABLE}."available_value_excl_vat_eur" ;;
  }

  dimension: avg_pcs_ordered {
    type: number
    sql: ${TABLE}."avg_pcs_ordered" ;;
  }

  dimension: buffer {
    type: number
    sql: ${TABLE}."buffer" ;;
  }

  dimension: category_tag_dry_fresh {
    type: string
    sql: ${TABLE}."category_tag_dry_fresh" ;;
  }

  dimension: category_tag_group_name {
    type: string
    sql: ${TABLE}."category_tag_group_name" ;;
  }

  dimension: category_tag_name {
    type: string
    sql: ${TABLE}."category_tag_name" ;;
  }

  dimension: cnt_sku_order_arrived {
    type: number
    sql: ${TABLE}."cnt_sku_order_arrived" ;;
  }

  dimension: cnt_sku_ordered {
    type: number
    sql: ${TABLE}."cnt_sku_ordered" ;;
  }

  dimension: cnt_supplier_orders {
    type: number
    sql: ${TABLE}."cnt_supplier_orders" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: daily_forecast_or_sales {
    type: number
    sql: ${TABLE}."daily_forecast_or_sales" ;;
  }

  dimension: daily_forecast_or_sales_origin {
    type: string
    sql: ${TABLE}."daily_forecast_or_sales_origin" ;;
  }

  dimension: days_coverage {
    type: number
    sql: ${TABLE}."days_coverage" ;;
  }

  dimension: dimensions_blank_both {
    type: string
    sql: ${TABLE}."dimensions_blank_both" ;;
  }

  dimension: dimensions_blank_carton {
    type: string
    sql: ${TABLE}."dimensions_blank_carton" ;;
  }

  dimension: dimensions_blank_piece {
    type: string
    sql: ${TABLE}."dimensions_blank_piece" ;;
  }

  dimension: dm3_carton {
    type: number
    sql: ${TABLE}."dm3_carton" ;;
  }

  dimension: dm3_piece {
    type: number
    sql: ${TABLE}."dm3_piece" ;;
  }

  dimension: durability_days {
    type: number
    sql: ${TABLE}."durability_days" ;;
  }

  dimension: enabled {
    type: string
    sql: ${TABLE}."enabled" ;;
  }

  dimension: facing {
    type: string
    sql: ${TABLE}."facing" ;;
  }

  dimension: forecast_next_30d_daily_avg {
    type: number
    sql: ${TABLE}."forecast_next_30d_daily_avg" ;;
  }

  dimension: height_carton {
    type: number
    sql: ${TABLE}."height_carton" ;;
  }

  dimension: height_piece {
    type: number
    sql: ${TABLE}."height_piece" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: l1_category_name_en {
    type: string
    sql: ${TABLE}."L1_category_name_en" ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}."L2_category_name" ;;
  }

  dimension: l2_category_name_en {
    type: string
    sql: ${TABLE}."L2_category_name_en" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."L3_category_name" ;;
  }

  dimension: l3_category_name_en {
    type: string
    sql: ${TABLE}."L3_category_name_en" ;;
  }

  dimension: length_carton {
    type: number
    sql: ${TABLE}."length_carton" ;;
  }

  dimension: length_piece {
    type: number
    sql: ${TABLE}."length_piece" ;;
  }

  dimension: min_order_amount_sku {
    type: number
    sql: ${TABLE}."min_order_amount_sku" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: name_dry_fresh {
    type: string
    sql: ${TABLE}."name_dry_fresh" ;;
  }

  dimension: ordering_to_pp_enabled {
    type: string
    sql: ${TABLE}."Ordering_To_PP_Enabled" ;;
  }

  dimension: pallet_height {
    type: number
    sql: ${TABLE}."pallet_height" ;;
  }

  dimension: pieces_in_facing_fc_calculation {
    type: number
    sql: ${TABLE}."pieces_in_facing_fc_calculation" ;;
  }

  dimension: pieces_in_pack_type_carton {
    type: number
    sql: ${TABLE}."pieces_in_pack_type_carton" ;;
  }

  dimension: pieces_in_pack_type_layer {
    type: number
    sql: ${TABLE}."pieces_in_pack_type_layer" ;;
  }

  dimension: pieces_in_pack_type_pallet {
    type: number
    sql: ${TABLE}."pieces_in_pack_type_pallet" ;;
  }

  dimension: pieces_in_pack_type_piece {
    type: number
    sql: ${TABLE}."pieces_in_pack_type_piece" ;;
  }

  dimension: position_ident {
    type: string
    sql: ${TABLE}."position_ident" ;;
  }

  dimension: product_dimensions_percent_diff {
    type: number
    sql: ${TABLE}."product_dimensions_percent_diff" ;;
  }

  dimension: product_dimensions_valid {
    type: string
    sql: ${TABLE}."product_dimensions_valid" ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."product_id" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: replenishment_requests_last30d {
    type: number
    sql: ${TABLE}."replenishment_requests_last30d" ;;
  }

  dimension: replenishment_requests_last30d_daily_avg {
    type: number
    sql: ${TABLE}."replenishment_requests_last30d_daily_avg" ;;
  }

  dimension: replenishment_requests_last7d {
    type: number
    sql: ${TABLE}."replenishment_requests_last7d" ;;
  }

  dimension: replenishment_requests_last7d_daily_avg {
    type: number
    sql: ${TABLE}."replenishment_requests_last7d_daily_avg" ;;
  }

  dimension: sales_amount_last_30d {
    type: number
    sql: ${TABLE}."sales_amount_last_30d" ;;
  }

  dimension: sales_amount_last_30d_daily_avg {
    type: number
    sql: ${TABLE}."sales_amount_last_30d_daily_avg" ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}."sector" ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}."segment" ;;
  }

  dimension: shelf {
    type: string
    sql: ${TABLE}."shelf" ;;
  }

  dimension: shelf_deck {
    type: string
    sql: ${TABLE}."shelf_deck" ;;
  }

  dimension: source_face120_dm3 {
    type: number
    sql: ${TABLE}."source_face120_dm3" ;;
  }

  dimension: source_face15_dm3 {
    type: number
    sql: ${TABLE}."source_face15_dm3" ;;
  }

  dimension: source_face20_dm3 {
    type: number
    sql: ${TABLE}."source_face20_dm3" ;;
  }

  dimension: source_face30_dm3 {
    type: number
    sql: ${TABLE}."source_face30_dm3" ;;
  }

  dimension: source_face40_dm3 {
    type: number
    sql: ${TABLE}."source_face40_dm3" ;;
  }

  dimension: source_face60_dm3 {
    type: number
    sql: ${TABLE}."source_face60_dm3" ;;
  }

  dimension: source_face80_dm3 {
    type: number
    sql: ${TABLE}."source_face80_dm3" ;;
  }

  dimension: source_hpal_dm3 {
    type: number
    sql: ${TABLE}."source_hpal_dm3" ;;
  }

  dimension: source_pal_dm3 {
    type: number
    sql: ${TABLE}."source_pal_dm3" ;;
  }

  dimension: source_qpal_dm3 {
    type: number
    sql: ${TABLE}."source_qpal_dm3" ;;
  }

  dimension: sp_has_dimensions {
    type: string
    sql: ${TABLE}."sp_has_dimensions" ;;
  }

  dimension: stock_amount {
    type: number
    sql: ${TABLE}."stock_amount" ;;
  }

  dimension: stock_position_depth {
    type: number
    sql: ${TABLE}."stock_position_depth" ;;
  }

  dimension: stock_position_height {
    type: number
    sql: ${TABLE}."stock_position_height" ;;
  }

  dimension: stock_position_pieces_max_capacity {
    type: number
    sql: ${TABLE}."stock_position_pieces_max_capacity" ;;
  }

  dimension: stock_position_width {
    type: number
    sql: ${TABLE}."stock_position_width" ;;
  }

  dimension: threshold_amount {
    type: number
    sql: ${TABLE}."threshold_amount" ;;
  }

  dimension: threshold_percentage_amount {
    type: number
    sql: ${TABLE}."threshold_percentage_amount" ;;
  }

  dimension: top20 {
    type: string
    sql: ${TABLE}."TOP20" ;;
  }

  dimension: top5 {
    type: string
    sql: ${TABLE}."TOP5" ;;
  }

  dimension: value_in_buffer {
    type: number
    sql: ${TABLE}."value_in_buffer" ;;
  }

  dimension: value_in_stock {
    type: number
    sql: ${TABLE}."value_in_stock" ;;
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

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  dimension: weight_gross_piece {
    type: number
    sql: ${TABLE}."weight_gross_piece" ;;
  }

  dimension: width_carton {
    type: number
    sql: ${TABLE}."width_carton" ;;
  }

  dimension: width_piece {
    type: number
    sql: ${TABLE}."width_piece" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      l3_category_name,
      name,
      category_tag_group_name,
      l1_category_name,
      category_tag_name,
      warehouse_name,
      l2_category_name,
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
