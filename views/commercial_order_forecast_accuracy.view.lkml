view: commercial_order_forecast_accuracy {
  sql_table_name: "WORKSPACE_233686783"."commercial_order_forecast_accuracy"
    ;;

  dimension: automl_forecast {
    type: number
    sql: ${TABLE}."automl_forecast" ;;
  }

  dimension: automl_model {
    type: string
    sql: ${TABLE}."automl_model" ;;
  }

  dimension: availability {
    type: number
    sql: ${TABLE}."availability" ;;
  }

  dimension: avg_daily_sales_30d {
    type: number
    sql: ${TABLE}."avg_daily_sales_30d" ;;
  }

  dimension: avg_daily_sales_7d {
    type: number
    sql: ${TABLE}."avg_daily_sales_7d" ;;
  }

  dimension: commercial_order_warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."commercial_order_warehouse_inventory_unique_id" ;;
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
    type: string
    sql: ${TABLE}."day_count" ;;
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

  dimension: ensemble {
    type: number
    sql: ${TABLE}."ensemble" ;;
  }

  dimension: fc_penetration_actual {
    type: number
    sql: ${TABLE}."fc_penetration_actual" ;;
  }

  dimension: fc_penetration_ly {
    type: number
    sql: ${TABLE}."fc_penetration_ly" ;;
  }

  dimension: fc_rolling_mean {
    type: number
    sql: ${TABLE}."fc_rolling_mean" ;;
  }

  dimension: fc_xgb_ensemble {
    type: number
    sql: ${TABLE}."fc_xgb_ensemble" ;;
  }

  dimension: final_forecast {
    type: number
    sql: ${TABLE}."final_forecast" ;;
  }

  dimension: final_product_forecast {
    type: number
    sql: ${TABLE}."final_product_forecast" ;;
  }

  dimension_group: finish {
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
    sql: ${TABLE}."finish_date" ;;
  }

  dimension: forecast_bakery {
    type: number
    sql: ${TABLE}."forecast_bakery" ;;
  }

  dimension: forecast_type {
    type: string
    sql: ${TABLE}."forecast_type" ;;
  }

  dimension: lr_ma {
    type: number
    sql: ${TABLE}."lr_ma" ;;
  }

  dimension: lr_ma_ord {
    type: number
    sql: ${TABLE}."lr_ma_ord" ;;
  }

  dimension: new_sku {
    type: number
    sql: ${TABLE}."new_sku" ;;
  }

  dimension: order_count {
    type: number
    sql: ${TABLE}."order_count" ;;
  }

  dimension: order_count_predicted {
    type: number
    sql: ${TABLE}."order_count_predicted" ;;
  }

  dimension: orders_by_time {
    type: number
    sql: ${TABLE}."orders_by_time" ;;
  }

  dimension: private_brand_sku {
    type: number
    sql: ${TABLE}."private_brand_sku" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: promo_sku {
    type: number
    sql: ${TABLE}."promo_sku" ;;
  }

  dimension: prophet {
    type: number
    sql: ${TABLE}."prophet" ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}."sales" ;;
  }

  dimension: sales_estimation_30d {
    type: number
    sql: ${TABLE}."sales_estimation_30d" ;;
  }

  dimension: sales_estimation_7d {
    type: number
    sql: ${TABLE}."sales_estimation_7d" ;;
  }

  dimension: sales_estimation_diff_30d {
    type: number
    sql: ${TABLE}."sales_estimation_diff_30d" ;;
  }

  dimension: sales_estimation_diff_7d {
    type: number
    sql: ${TABLE}."sales_estimation_diff_7d" ;;
  }

  dimension: sales_orig {
    type: number
    sql: ${TABLE}."sales_orig" ;;
  }

  dimension: sales_wo_lm {
    type: number
    sql: ${TABLE}."sales_wo_LM" ;;
  }

  dimension: sch_forecast_orders {
    type: number
    sql: ${TABLE}."sch_forecast_orders" ;;
  }

  dimension: sch_forecast_orders_by_time {
    type: number
    sql: ${TABLE}."sch_forecast_orders_by_time" ;;
  }

  dimension: seasonal_sku {
    type: number
    sql: ${TABLE}."seasonal_sku" ;;
  }

  dimension: supplier_category {
    type: string
    sql: ${TABLE}."supplier_category" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: supplier_unique_id {
    type: string
    sql: ${TABLE}."supplier_unique_id" ;;
  }

  dimension: supplier_warehouse_unique_id {
    type: string
    sql: ${TABLE}."supplier_warehouse_unique_id" ;;
  }

  dimension: template_name {
    type: string
    sql: ${TABLE}."template_name" ;;
  }

  dimension: top_sku {
    type: number
    sql: ${TABLE}."top_sku" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."warehouse_inventory_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [supplier_name, template_name]
  }
}
