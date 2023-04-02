view: out_commercial_order_forecast_accuracy_internal {
  sql_table_name: "WORKSPACE_233686783"."out_commercial_order_forecast_accuracy_internal"
    ;;

  dimension: availability {
    type: number
    sql: ${TABLE}."availability" ;;
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

  dimension: forecast_type {
    type: string
    sql: ${TABLE}."forecast_type" ;;
  }

  dimension: internal_forecast {
    type: number
    sql: ${TABLE}."internal_forecast" ;;
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
    type: string
    sql: ${TABLE}."new_sku" ;;
  }

  dimension: private_brand_sku {
    type: string
    sql: ${TABLE}."private_brand_sku" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: promo_sku {
    type: string
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

  dimension: sales_orig {
    type: number
    sql: ${TABLE}."sales_orig" ;;
  }

  dimension: sales_orig_pcs {
    type: number
    sql: ${TABLE}."sales_orig_pcs" ;;
  }

  dimension: sales_pcs {
    type: number
    sql: ${TABLE}."sales_pcs" ;;
  }

  dimension: sales_wo_lm {
    type: number
    sql: ${TABLE}."sales_wo_LM" ;;
  }

  dimension: sales_wo_lm_pcs {
    type: number
    sql: ${TABLE}."sales_wo_LM_pcs" ;;
  }

  dimension: seasonal_sku {
    type: string
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
    type: string
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
    drill_fields: [template_name, supplier_name]
  }
}
