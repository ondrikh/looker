view: bad_sales_forecast_root_causes {
  sql_table_name: "WORKSPACE_233686783"."bad_sales_forecast_root_causes"
    ;;

  dimension: availability {
    type: number
    sql: ${TABLE}."availability" ;;
  }

  dimension: avg_availability_past_30_days {
    type: number
    sql: ${TABLE}."avg_availability_past_30_days" ;;
  }

  dimension: avg_availability_past_7_days {
    type: number
    sql: ${TABLE}."avg_availability_past_7_days" ;;
  }

  dimension: avg_final_forecast {
    type: number
    sql: ${TABLE}."avg_final_forecast" ;;
  }

  dimension: avg_sales {
    type: number
    sql: ${TABLE}."avg_sales" ;;
  }

  dimension: avg_sales_orig {
    type: number
    sql: ${TABLE}."avg_sales_orig" ;;
  }

  dimension: avg_sales_orig_past_30_days {
    type: number
    sql: ${TABLE}."avg_sales_orig_past_30_days" ;;
  }

  dimension: avg_sales_orig_past_7_days {
    type: number
    sql: ${TABLE}."avg_sales_orig_past_7_days" ;;
  }

  dimension: avg_sales_past_30_days {
    type: number
    sql: ${TABLE}."avg_sales_past_30_days" ;;
  }

  dimension: avg_sales_past_7_days {
    type: number
    sql: ${TABLE}."avg_sales_past_7_days" ;;
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

  dimension: generated_wanted_count {
    type: number
    sql: ${TABLE}."generated_wanted_count" ;;
  }

  dimension: is_autosend {
    type: string
    sql: ${TABLE}."is_autosend" ;;
  }

  dimension: is_forecast_none {
    type: string
    sql: ${TABLE}."is_forecast_none" ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}."sales" ;;
  }

  dimension: sales_orig {
    type: number
    sql: ${TABLE}."sales_orig" ;;
  }

  dimension: std_availability_past_30_days {
    type: number
    sql: ${TABLE}."std_availability_past_30_days" ;;
  }

  dimension: std_availability_past_7_days {
    type: number
    sql: ${TABLE}."std_availability_past_7_days" ;;
  }

  dimension: std_sales_orig_past_30_days {
    type: number
    sql: ${TABLE}."std_sales_orig_past_30_days" ;;
  }

  dimension: std_sales_orig_past_7_days {
    type: number
    sql: ${TABLE}."std_sales_orig_past_7_days" ;;
  }

  dimension: std_sales_past_30_days {
    type: number
    sql: ${TABLE}."std_sales_past_30_days" ;;
  }

  dimension: std_sales_past_7_days {
    type: number
    sql: ${TABLE}."std_sales_past_7_days" ;;
  }

  dimension: template_id {
    type: string
    sql: ${TABLE}."template_id" ;;
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
    drill_fields: [l3_category_name, name, l1_category_name, l2_category_name]
  }
}
