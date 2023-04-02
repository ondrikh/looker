view: commercial_order_prediction_report {
  sql_table_name: "WORKSPACE_233686783"."commercial_order_prediction_report"
    ;;

  dimension: availability {
    type: number
    sql: ${TABLE}."availability" ;;
  }

  dimension: buffer_type {
    type: string
    sql: ${TABLE}."buffer_type" ;;
  }

  dimension: commercial_order_unique_id {
    type: string
    sql: ${TABLE}."commercial_order_unique_id" ;;
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
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."create_date" ;;
  }

  dimension: day_count {
    type: string
    sql: ${TABLE}."day_count" ;;
  }

  dimension: day_percent_plus {
    type: string
    sql: ${TABLE}."day_percent_plus" ;;
  }

  dimension_group: deliver {
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
    sql: ${TABLE}."deliver_at" ;;
  }

  dimension_group: finish {
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
    sql: ${TABLE}."finish_date" ;;
  }

  dimension: forecast {
    type: number
    sql: ${TABLE}."forecast" ;;
  }

  dimension: maximum_buffer {
    type: string
    sql: ${TABLE}."maximum_buffer" ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}."model" ;;
  }

  dimension: order_count {
    type: number
    sql: ${TABLE}."order_count" ;;
  }

  dimension: percents {
    type: string
    sql: ${TABLE}."percents" ;;
  }

  dimension: predicted_buffer {
    type: string
    sql: ${TABLE}."predicted_buffer" ;;
  }

  dimension: predicted_order_count {
    type: number
    sql: ${TABLE}."predicted_order_count" ;;
  }

  dimension: price_buffer {
    type: string
    sql: ${TABLE}."price_buffer" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: regular_buffer {
    type: string
    sql: ${TABLE}."regular_buffer" ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}."sales" ;;
  }

  dimension: sales_orig {
    type: number
    sql: ${TABLE}."sales_orig" ;;
  }

  dimension: sales_orig_wo_lm {
    type: number
    sql: ${TABLE}."sales_orig_wo_LM" ;;
  }

  dimension: sales_wo_lm {
    type: number
    sql: ${TABLE}."sales_wo_LM" ;;
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
    drill_fields: []
  }
}
