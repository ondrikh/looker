view: inbound_forecast_new {
  sql_table_name: "WORKSPACE_233686783"."inbound_forecast_new"
    ;;

  dimension: action_sales {
    type: number
    sql: ${TABLE}."action_sales" ;;
  }

  dimension: carton_amount {
    type: number
    sql: ${TABLE}."carton_amount" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: final_inbound_forecast {
    type: number
    sql: ${TABLE}."final_inbound_forecast" ;;
  }

  dimension: final_order_count {
    type: number
    sql: ${TABLE}."final_order_count" ;;
  }

  dimension: forecast_with_buffer_after_rounding {
    type: number
    sql: ${TABLE}."forecast_with_buffer_after_rounding" ;;
  }

  dimension: forecast_with_buffer_after_rounding_wo_stock {
    type: number
    sql: ${TABLE}."forecast_with_buffer_after_rounding_wo_stock" ;;
  }

  dimension: forecast_with_buffer_after_rounding_wo_stock_averaged {
    type: number
    sql: ${TABLE}."forecast_with_buffer_after_rounding_wo_stock_averaged" ;;
  }

  dimension: inbound_forecast_after_rounding {
    type: number
    sql: ${TABLE}."inbound_forecast_after_rounding" ;;
  }

  dimension: inbound_forecast_after_rounding_wo_stock {
    type: number
    sql: ${TABLE}."inbound_forecast_after_rounding_wo_stock" ;;
  }

  dimension: layer_amount {
    type: number
    sql: ${TABLE}."layer_amount" ;;
  }

  dimension_group: next_deliver {
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
    sql: ${TABLE}."next_deliver_at" ;;
  }

  dimension: pallete_amount {
    type: number
    sql: ${TABLE}."pallete_amount" ;;
  }

  dimension: pipeline_name {
    type: string
    sql: ${TABLE}."pipeline_name" ;;
  }

  dimension: supplier_unique_id {
    type: string
    sql: ${TABLE}."supplier_unique_id" ;;
  }

  dimension: temperature_mode {
    type: string
    sql: ${TABLE}."temperature_mode" ;;
  }

  dimension: template_name {
    type: string
    sql: ${TABLE}."template_name" ;;
  }

  dimension: template_unique_id {
    type: string
    sql: ${TABLE}."template_unique_id" ;;
  }

  dimension: timeslot_booking_user {
    type: string
    sql: ${TABLE}."timeslot_booking_user" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}."unit" ;;
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
    drill_fields: [template_name, pipeline_name]
  }
}
