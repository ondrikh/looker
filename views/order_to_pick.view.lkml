view: order_to_pick {
  sql_table_name: "WORKSPACE_233686783"."order_to_pick"
    ;;

  dimension: abc_split {
    type: string
    sql: ${TABLE}."abc_split" ;;
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

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: day_count_coverage {
    type: number
    sql: ${TABLE}."day_count_coverage" ;;
  }

  dimension: day_count_coverage_uplifted {
    type: number
    sql: ${TABLE}."day_count_coverage_uplifted" ;;
  }

  dimension: days_coverage {
    type: number
    sql: ${TABLE}."Days_Coverage" ;;
  }

  dimension: days_coverage_origin {
    type: string
    sql: ${TABLE}."Days_Coverage_origin" ;;
  }

  dimension: dim_check_ok {
    type: string
    sql: ${TABLE}."dim_check_ok" ;;
  }

  dimension: dimensions_blank_both {
    type: number
    sql: ${TABLE}."dimensions_blank_both" ;;
  }

  dimension: dimensions_blank_carton {
    type: number
    sql: ${TABLE}."dimensions_blank_carton" ;;
  }

  dimension: dimensions_blank_piece {
    type: number
    sql: ${TABLE}."dimensions_blank_piece" ;;
  }

  dimension: dimensions_blank_stock_position {
    type: number
    sql: ${TABLE}."dimensions_blank_stock_position" ;;
  }

  dimension: dm3_carton {
    type: number
    sql: ${TABLE}."dm3_carton" ;;
  }

  dimension: dm3_piece {
    type: number
    sql: ${TABLE}."dm3_piece" ;;
  }

  dimension: dm3_stock_position {
    type: number
    sql: ${TABLE}."dm3_stock_position" ;;
  }

  dimension: durability_days {
    type: string
    sql: ${TABLE}."durability_days" ;;
  }

  dimension: facing {
    type: string
    sql: ${TABLE}."facing" ;;
  }

  dimension: grocery_unique_id {
    type: string
    sql: ${TABLE}."grocery_unique_id" ;;
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

  dimension: order_count_pieces {
    type: number
    sql: ${TABLE}."order_count_pieces" ;;
  }

  dimension: order_count_pieces_non_promo {
    type: number
    sql: ${TABLE}."order_count_pieces_nonPromo" ;;
  }

  dimension: order_count_pieces_promo {
    type: number
    sql: ${TABLE}."order_count_pieces_Promo" ;;
  }

  dimension: ordering_to_pp_enabled {
    type: string
    sql: ${TABLE}."Ordering_To_PP_Enabled" ;;
  }

  dimension: pallet_height {
    type: number
    sql: ${TABLE}."pallet_height" ;;
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

  dimension: pom_day_count {
    type: number
    sql: ${TABLE}."pom_day_count" ;;
  }

  dimension: product_dimensions_percent_diff {
    type: number
    sql: ${TABLE}."Product_Dimensions_Percent_Diff" ;;
  }

  dimension: product_dimensions_valid {
    type: string
    sql: ${TABLE}."Product_Dimensions_Valid" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: sale_in_day {
    type: string
    sql: ${TABLE}."sale_in_day" ;;
  }

  dimension: sales_amount {
    type: number
    sql: ${TABLE}."sales_amount" ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}."sector" ;;
  }

  dimension: sp_has_dimensions {
    type: string
    sql: ${TABLE}."sp_has_dimensions" ;;
  }

  dimension: stock_amount {
    type: number
    sql: ${TABLE}."stock_amount" ;;
  }

  dimension_group: stock {
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
    sql: ${TABLE}."stock_date" ;;
  }

  dimension: stock_position_depth {
    type: string
    sql: ${TABLE}."stock_position_depth" ;;
  }

  dimension: stock_position_facing {
    type: string
    sql: ${TABLE}."stock_position_facing" ;;
  }

  dimension: stock_position_height {
    type: string
    sql: ${TABLE}."stock_position_height" ;;
  }

  dimension: stock_position_pieces_available {
    type: string
    sql: ${TABLE}."stock_position_pieces_available" ;;
  }

  dimension: stock_position_width {
    type: string
    sql: ${TABLE}."stock_position_width" ;;
  }

  dimension: top20 {
    type: string
    sql: ${TABLE}."TOP20" ;;
  }

  dimension: top5 {
    type: string
    sql: ${TABLE}."TOP5" ;;
  }

  dimension: warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."warehouse_inventory_unique_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  dimension: warehouse_product_class {
    type: string
    sql: ${TABLE}."warehouse_product_class" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
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
      category_tag_name,
      l2_category_name,
      l3_category_name,
      name,
      warehouse_name,
      l1_category_name,
      category_tag_group_name
    ]
  }
}
