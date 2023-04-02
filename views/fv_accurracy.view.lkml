view: fv_accurracy {
  sql_table_name: "WORKSPACE_233686783"."FV_accurracy"
    ;;

  dimension: added_buffer {
    type: number
    sql: ${TABLE}."added_buffer" ;;
  }

  dimension: added_count {
    type: number
    sql: ${TABLE}."added_count" ;;
  }

  dimension: availability {
    type: number
    sql: ${TABLE}."availability" ;;
  }

  dimension: availability_during_order {
    type: number
    sql: ${TABLE}."availability_during_order" ;;
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

  dimension: generated_wanted_count {
    type: number
    sql: ${TABLE}."generated_wanted_count" ;;
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

  dimension: order_count {
    type: number
    sql: ${TABLE}."order_count" ;;
  }

  dimension: order_count_amount {
    type: number
    sql: ${TABLE}."order_count_amount" ;;
  }

  dimension: order_count_pieces {
    type: number
    sql: ${TABLE}."order_count_pieces" ;;
  }

  dimension: order_count_predicted {
    type: number
    sql: ${TABLE}."order_count_predicted" ;;
  }

  dimension: order_kilogram_count {
    type: number
    sql: ${TABLE}."order_kilogram_count" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}."sales" ;;
  }

  dimension: sales_avg_last_30_d {
    type: number
    sql: ${TABLE}."sales_avg_last_30D" ;;
  }

  dimension: sales_orig {
    type: number
    sql: ${TABLE}."sales_orig" ;;
  }

  dimension: sales_orig_avg_last_30_d {
    type: number
    sql: ${TABLE}."sales_orig_avg_last_30D" ;;
  }

  dimension: sales_orig_stddev_last_30_d {
    type: number
    sql: ${TABLE}."sales_orig_stddev_last_30D" ;;
  }

  dimension: sales_stddev_last_30_d {
    type: number
    sql: ${TABLE}."sales_stddev_last_30D" ;;
  }

  dimension: sales_wo_lm {
    type: number
    sql: ${TABLE}."sales_wo_LM" ;;
  }

  dimension: shrink {
    type: number
    sql: ${TABLE}."shrink" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: supplier_unique_id {
    type: string
    sql: ${TABLE}."supplier_unique_id" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: wanted_count {
    type: number
    sql: ${TABLE}."wanted_count" ;;
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
    drill_fields: [l1_category_name, l2_category_name, supplier_name, l3_category_name]
  }
}
