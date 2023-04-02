view: commercial_order_forecast_accuracy_comparison {
  sql_table_name: "WORKSPACE_233686783"."commercial_order_forecast_accuracy_comparison"
    ;;

  dimension: availability {
    type: number
    sql: ${TABLE}."availability" ;;
  }

  dimension: compare_uplift {
    type: string
    sql: ${TABLE}."compare_uplift" ;;
  }

  dimension: compare_uplift_model_selection {
    type: string
    sql: ${TABLE}."compare_uplift_model_selection" ;;
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

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
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

  dimension: sales_wo_lm {
    type: number
    sql: ${TABLE}."sales_wo_LM" ;;
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

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: uplift_applied {
    type: string
    sql: ${TABLE}."uplift_applied" ;;
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