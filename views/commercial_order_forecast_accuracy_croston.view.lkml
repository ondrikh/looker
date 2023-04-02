view: commercial_order_forecast_accuracy_croston {
  sql_table_name: "WORKSPACE_233686783"."commercial_order_forecast_accuracy_croston"
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

  dimension: croston_1 {
    type: number
    sql: ${TABLE}."croston_1" ;;
  }

  dimension: croston_10 {
    type: number
    sql: ${TABLE}."croston_10" ;;
  }

  dimension: croston_10_1 {
    type: number
    sql: ${TABLE}."croston_10_1" ;;
  }

  dimension: croston_10_10 {
    type: number
    sql: ${TABLE}."croston_10_10" ;;
  }

  dimension: croston_10_2 {
    type: number
    sql: ${TABLE}."croston_10_2" ;;
  }

  dimension: croston_10_3 {
    type: number
    sql: ${TABLE}."croston_10_3" ;;
  }

  dimension: croston_10_4 {
    type: number
    sql: ${TABLE}."croston_10_4" ;;
  }

  dimension: croston_10_5 {
    type: number
    sql: ${TABLE}."croston_10_5" ;;
  }

  dimension: croston_10_6 {
    type: number
    sql: ${TABLE}."croston_10_6" ;;
  }

  dimension: croston_10_7 {
    type: number
    sql: ${TABLE}."croston_10_7" ;;
  }

  dimension: croston_10_8 {
    type: number
    sql: ${TABLE}."croston_10_8" ;;
  }

  dimension: croston_10_9 {
    type: number
    sql: ${TABLE}."croston_10_9" ;;
  }

  dimension: croston_1_1 {
    type: number
    sql: ${TABLE}."croston_1_1" ;;
  }

  dimension: croston_1_10 {
    type: number
    sql: ${TABLE}."croston_1_10" ;;
  }

  dimension: croston_1_2 {
    type: number
    sql: ${TABLE}."croston_1_2" ;;
  }

  dimension: croston_1_3 {
    type: number
    sql: ${TABLE}."croston_1_3" ;;
  }

  dimension: croston_1_4 {
    type: number
    sql: ${TABLE}."croston_1_4" ;;
  }

  dimension: croston_1_5 {
    type: number
    sql: ${TABLE}."croston_1_5" ;;
  }

  dimension: croston_1_6 {
    type: number
    sql: ${TABLE}."croston_1_6" ;;
  }

  dimension: croston_1_7 {
    type: number
    sql: ${TABLE}."croston_1_7" ;;
  }

  dimension: croston_1_8 {
    type: number
    sql: ${TABLE}."croston_1_8" ;;
  }

  dimension: croston_1_9 {
    type: number
    sql: ${TABLE}."croston_1_9" ;;
  }

  dimension: croston_2 {
    type: number
    sql: ${TABLE}."croston_2" ;;
  }

  dimension: croston_2_1 {
    type: number
    sql: ${TABLE}."croston_2_1" ;;
  }

  dimension: croston_2_10 {
    type: number
    sql: ${TABLE}."croston_2_10" ;;
  }

  dimension: croston_2_2 {
    type: number
    sql: ${TABLE}."croston_2_2" ;;
  }

  dimension: croston_2_3 {
    type: number
    sql: ${TABLE}."croston_2_3" ;;
  }

  dimension: croston_2_4 {
    type: number
    sql: ${TABLE}."croston_2_4" ;;
  }

  dimension: croston_2_5 {
    type: number
    sql: ${TABLE}."croston_2_5" ;;
  }

  dimension: croston_2_6 {
    type: number
    sql: ${TABLE}."croston_2_6" ;;
  }

  dimension: croston_2_7 {
    type: number
    sql: ${TABLE}."croston_2_7" ;;
  }

  dimension: croston_2_8 {
    type: number
    sql: ${TABLE}."croston_2_8" ;;
  }

  dimension: croston_2_9 {
    type: number
    sql: ${TABLE}."croston_2_9" ;;
  }

  dimension: croston_3 {
    type: number
    sql: ${TABLE}."croston_3" ;;
  }

  dimension: croston_3_1 {
    type: number
    sql: ${TABLE}."croston_3_1" ;;
  }

  dimension: croston_3_10 {
    type: number
    sql: ${TABLE}."croston_3_10" ;;
  }

  dimension: croston_3_2 {
    type: number
    sql: ${TABLE}."croston_3_2" ;;
  }

  dimension: croston_3_3 {
    type: number
    sql: ${TABLE}."croston_3_3" ;;
  }

  dimension: croston_3_4 {
    type: number
    sql: ${TABLE}."croston_3_4" ;;
  }

  dimension: croston_3_5 {
    type: number
    sql: ${TABLE}."croston_3_5" ;;
  }

  dimension: croston_3_6 {
    type: number
    sql: ${TABLE}."croston_3_6" ;;
  }

  dimension: croston_3_7 {
    type: number
    sql: ${TABLE}."croston_3_7" ;;
  }

  dimension: croston_3_8 {
    type: number
    sql: ${TABLE}."croston_3_8" ;;
  }

  dimension: croston_3_9 {
    type: number
    sql: ${TABLE}."croston_3_9" ;;
  }

  dimension: croston_4 {
    type: number
    sql: ${TABLE}."croston_4" ;;
  }

  dimension: croston_4_1 {
    type: number
    sql: ${TABLE}."croston_4_1" ;;
  }

  dimension: croston_4_10 {
    type: number
    sql: ${TABLE}."croston_4_10" ;;
  }

  dimension: croston_4_2 {
    type: number
    sql: ${TABLE}."croston_4_2" ;;
  }

  dimension: croston_4_3 {
    type: number
    sql: ${TABLE}."croston_4_3" ;;
  }

  dimension: croston_4_4 {
    type: number
    sql: ${TABLE}."croston_4_4" ;;
  }

  dimension: croston_4_5 {
    type: number
    sql: ${TABLE}."croston_4_5" ;;
  }

  dimension: croston_4_6 {
    type: number
    sql: ${TABLE}."croston_4_6" ;;
  }

  dimension: croston_4_7 {
    type: number
    sql: ${TABLE}."croston_4_7" ;;
  }

  dimension: croston_4_8 {
    type: number
    sql: ${TABLE}."croston_4_8" ;;
  }

  dimension: croston_4_9 {
    type: number
    sql: ${TABLE}."croston_4_9" ;;
  }

  dimension: croston_5 {
    type: number
    sql: ${TABLE}."croston_5" ;;
  }

  dimension: croston_5_1 {
    type: number
    sql: ${TABLE}."croston_5_1" ;;
  }

  dimension: croston_5_10 {
    type: number
    sql: ${TABLE}."croston_5_10" ;;
  }

  dimension: croston_5_2 {
    type: number
    sql: ${TABLE}."croston_5_2" ;;
  }

  dimension: croston_5_3 {
    type: number
    sql: ${TABLE}."croston_5_3" ;;
  }

  dimension: croston_5_4 {
    type: number
    sql: ${TABLE}."croston_5_4" ;;
  }

  dimension: croston_5_5 {
    type: number
    sql: ${TABLE}."croston_5_5" ;;
  }

  dimension: croston_5_6 {
    type: number
    sql: ${TABLE}."croston_5_6" ;;
  }

  dimension: croston_5_7 {
    type: number
    sql: ${TABLE}."croston_5_7" ;;
  }

  dimension: croston_5_8 {
    type: number
    sql: ${TABLE}."croston_5_8" ;;
  }

  dimension: croston_5_9 {
    type: number
    sql: ${TABLE}."croston_5_9" ;;
  }

  dimension: croston_6 {
    type: number
    sql: ${TABLE}."croston_6" ;;
  }

  dimension: croston_6_1 {
    type: number
    sql: ${TABLE}."croston_6_1" ;;
  }

  dimension: croston_6_10 {
    type: number
    sql: ${TABLE}."croston_6_10" ;;
  }

  dimension: croston_6_2 {
    type: number
    sql: ${TABLE}."croston_6_2" ;;
  }

  dimension: croston_6_3 {
    type: number
    sql: ${TABLE}."croston_6_3" ;;
  }

  dimension: croston_6_4 {
    type: number
    sql: ${TABLE}."croston_6_4" ;;
  }

  dimension: croston_6_5 {
    type: number
    sql: ${TABLE}."croston_6_5" ;;
  }

  dimension: croston_6_6 {
    type: number
    sql: ${TABLE}."croston_6_6" ;;
  }

  dimension: croston_6_7 {
    type: number
    sql: ${TABLE}."croston_6_7" ;;
  }

  dimension: croston_6_8 {
    type: number
    sql: ${TABLE}."croston_6_8" ;;
  }

  dimension: croston_6_9 {
    type: number
    sql: ${TABLE}."croston_6_9" ;;
  }

  dimension: croston_7 {
    type: number
    sql: ${TABLE}."croston_7" ;;
  }

  dimension: croston_7_1 {
    type: number
    sql: ${TABLE}."croston_7_1" ;;
  }

  dimension: croston_7_10 {
    type: number
    sql: ${TABLE}."croston_7_10" ;;
  }

  dimension: croston_7_2 {
    type: number
    sql: ${TABLE}."croston_7_2" ;;
  }

  dimension: croston_7_3 {
    type: number
    sql: ${TABLE}."croston_7_3" ;;
  }

  dimension: croston_7_4 {
    type: number
    sql: ${TABLE}."croston_7_4" ;;
  }

  dimension: croston_7_5 {
    type: number
    sql: ${TABLE}."croston_7_5" ;;
  }

  dimension: croston_7_6 {
    type: number
    sql: ${TABLE}."croston_7_6" ;;
  }

  dimension: croston_7_7 {
    type: number
    sql: ${TABLE}."croston_7_7" ;;
  }

  dimension: croston_7_8 {
    type: number
    sql: ${TABLE}."croston_7_8" ;;
  }

  dimension: croston_7_9 {
    type: number
    sql: ${TABLE}."croston_7_9" ;;
  }

  dimension: croston_8 {
    type: number
    sql: ${TABLE}."croston_8" ;;
  }

  dimension: croston_8_1 {
    type: number
    sql: ${TABLE}."croston_8_1" ;;
  }

  dimension: croston_8_10 {
    type: number
    sql: ${TABLE}."croston_8_10" ;;
  }

  dimension: croston_8_2 {
    type: number
    sql: ${TABLE}."croston_8_2" ;;
  }

  dimension: croston_8_3 {
    type: number
    sql: ${TABLE}."croston_8_3" ;;
  }

  dimension: croston_8_4 {
    type: number
    sql: ${TABLE}."croston_8_4" ;;
  }

  dimension: croston_8_5 {
    type: number
    sql: ${TABLE}."croston_8_5" ;;
  }

  dimension: croston_8_6 {
    type: number
    sql: ${TABLE}."croston_8_6" ;;
  }

  dimension: croston_8_7 {
    type: number
    sql: ${TABLE}."croston_8_7" ;;
  }

  dimension: croston_8_8 {
    type: number
    sql: ${TABLE}."croston_8_8" ;;
  }

  dimension: croston_8_9 {
    type: number
    sql: ${TABLE}."croston_8_9" ;;
  }

  dimension: croston_9 {
    type: number
    sql: ${TABLE}."croston_9" ;;
  }

  dimension: croston_9_1 {
    type: number
    sql: ${TABLE}."croston_9_1" ;;
  }

  dimension: croston_9_10 {
    type: number
    sql: ${TABLE}."croston_9_10" ;;
  }

  dimension: croston_9_2 {
    type: number
    sql: ${TABLE}."croston_9_2" ;;
  }

  dimension: croston_9_3 {
    type: number
    sql: ${TABLE}."croston_9_3" ;;
  }

  dimension: croston_9_4 {
    type: number
    sql: ${TABLE}."croston_9_4" ;;
  }

  dimension: croston_9_5 {
    type: number
    sql: ${TABLE}."croston_9_5" ;;
  }

  dimension: croston_9_6 {
    type: number
    sql: ${TABLE}."croston_9_6" ;;
  }

  dimension: croston_9_7 {
    type: number
    sql: ${TABLE}."croston_9_7" ;;
  }

  dimension: croston_9_8 {
    type: number
    sql: ${TABLE}."croston_9_8" ;;
  }

  dimension: croston_9_9 {
    type: number
    sql: ${TABLE}."croston_9_9" ;;
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

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
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
