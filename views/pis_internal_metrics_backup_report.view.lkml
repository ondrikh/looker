view: pis_internal_metrics_backup_report {
  sql_table_name: "WORKSPACE_233686783"."PIS_internal_metrics_backup_report"
    ;;

  dimension: action_price {
    type: number
    sql: ${TABLE}."action_price" ;;
  }

  dimension: actual_price {
    type: number
    sql: ${TABLE}."actual_price" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: brand_id {
    type: string
    sql: ${TABLE}."brand_id" ;;
  }

  dimension: category_id {
    type: string
    sql: ${TABLE}."category_id" ;;
  }

  dimension: category_level {
    type: string
    sql: ${TABLE}."category_level" ;;
  }

  dimension: compet_num_promos_percentile {
    type: number
    sql: ${TABLE}."compet_num_promos_percentile" ;;
  }

  dimension: competitors {
    type: string
    sql: ${TABLE}."competitors" ;;
  }

  dimension: competitors_percentile {
    type: number
    sql: ${TABLE}."competitors_percentile" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: deleted {
    type: string
    sql: ${TABLE}."deleted" ;;
  }

  dimension: elast_month {
    type: number
    sql: ${TABLE}."elast_month" ;;
  }

  dimension: elast_percentile {
    type: number
    sql: ${TABLE}."elast_percentile" ;;
  }

  dimension: elasticity {
    type: number
    sql: ${TABLE}."elasticity" ;;
  }

  dimension: elasticity_source {
    type: string
    sql: ${TABLE}."elasticity_source" ;;
  }

  dimension: elasticity_stderr {
    type: number
    sql: ${TABLE}."elasticity_stderr" ;;
  }

  dimension: group_size {
    type: number
    sql: ${TABLE}."group_size" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}."L2_category_name" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."L3_category_name" ;;
  }

  dimension: l4_category_name {
    type: string
    sql: ${TABLE}."L4_category_name" ;;
  }

  dimension: l5_category_name {
    type: string
    sql: ${TABLE}."L5_category_name" ;;
  }

  dimension: max_compet_price {
    type: number
    sql: ${TABLE}."max_compet_price" ;;
  }

  dimension: mean_net_revenue_daily {
    type: number
    sql: ${TABLE}."mean_net_revenue_daily" ;;
  }

  dimension: mean_net_revenue_fraction {
    type: number
    sql: ${TABLE}."mean_net_revenue_fraction" ;;
  }

  dimension: mean_orders {
    type: number
    sql: ${TABLE}."mean_orders" ;;
  }

  dimension: mean_orders_fraction {
    type: number
    sql: ${TABLE}."mean_orders_fraction" ;;
  }

  dimension: mean_sales_daily {
    type: number
    sql: ${TABLE}."mean_sales_daily" ;;
  }

  dimension: mean_sales_daily_fraction {
    type: number
    sql: ${TABLE}."mean_sales_daily_fraction" ;;
  }

  dimension: mean_virgin_orders {
    type: number
    sql: ${TABLE}."mean_virgin_orders" ;;
  }

  dimension: mean_virgin_orders_fraction {
    type: number
    sql: ${TABLE}."mean_virgin_orders_fraction" ;;
  }

  dimension: min_compet_price {
    type: number
    sql: ${TABLE}."min_compet_price" ;;
  }

  dimension: net_revenue_percentile {
    type: number
    sql: ${TABLE}."net_revenue_percentile" ;;
  }

  dimension: num_compet_promos {
    type: number
    sql: ${TABLE}."num_compet_promos" ;;
  }

  dimension: orders_percentile {
    type: number
    sql: ${TABLE}."orders_percentile" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."price" ;;
  }

  dimension: product_family_name {
    type: string
    sql: ${TABLE}."product_family_name" ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."product_id" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: rep_rate_percentile {
    type: number
    sql: ${TABLE}."rep_rate_percentile" ;;
  }

  dimension: repurchase_rate_rdays {
    type: number
    sql: ${TABLE}."repurchase_rate_Rdays" ;;
  }

  dimension: sales_percentile {
    type: number
    sql: ${TABLE}."sales_percentile" ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}."score" ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}."snapshot_date" ;;
  }

  dimension: users_purchased {
    type: number
    sql: ${TABLE}."users_purchased" ;;
  }

  dimension: virgin_orders_percentile {
    type: number
    sql: ${TABLE}."virgin_orders_percentile" ;;
  }

  dimension: virgin_to_all_orders {
    type: number
    sql: ${TABLE}."virgin_to_all_orders" ;;
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
      l5_category_name,
      l1_category_name,
      l3_category_name,
      product_name,
      l4_category_name,
      l2_category_name,
      product_family_name,
      product.name,
      product.l2_category_name,
      product.product_family_name,
      product.l4_category_name,
      product.id,
      product.l5_category_name,
      product.l1_category_name,
      product.l3_category_name
    ]
  }
}
