view: inbound_forecast {
  sql_table_name: "WORKSPACE_233686783"."inbound_forecast"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: action_sales {
    type: number
    sql: ${TABLE}."action_sales" ;;
  }

  dimension: avg_sales {
    type: number
    sql: ${TABLE}."avg_sales" ;;
  }

  dimension: carton_amount {
    type: number
    sql: ${TABLE}."carton_amount" ;;
  }

  dimension: carton_ratio {
    type: number
    sql: ${TABLE}."carton_ratio" ;;
  }

  dimension: carton_ratio_wo_stock {
    type: number
    sql: ${TABLE}."carton_ratio_wo_stock" ;;
  }

  dimension: carton_ratio_wo_stock_plus_buffer {
    type: number
    sql: ${TABLE}."carton_ratio_wo_stock_plus_buffer" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date_end {
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
    sql: ${TABLE}."date_end" ;;
  }

  dimension_group: date_start {
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
    sql: ${TABLE}."date_start" ;;
  }

  dimension: day_count {
    type: string
    sql: ${TABLE}."day_count" ;;
  }

  dimension: delivery_days_plus {
    type: string
    sql: ${TABLE}."delivery_days_plus" ;;
  }

  dimension: final_forecast {
    type: number
    sql: ${TABLE}."final_forecast" ;;
  }

  dimension: forecast {
    type: number
    sql: ${TABLE}."forecast" ;;
  }

  dimension: forecast_wo_stock {
    type: number
    sql: ${TABLE}."forecast_wo_stock" ;;
  }

  dimension: forecast_wo_stock_plus_buffer {
    type: number
    sql: ${TABLE}."forecast_wo_stock_plus_buffer" ;;
  }

  dimension: layer_amount {
    type: number
    sql: ${TABLE}."layer_amount" ;;
  }

  dimension: layer_ratio {
    type: number
    sql: ${TABLE}."layer_ratio" ;;
  }

  dimension: layer_ratio_wo_stock {
    type: number
    sql: ${TABLE}."layer_ratio_wo_stock" ;;
  }

  dimension: layer_ratio_wo_stock_plus_buffer {
    type: number
    sql: ${TABLE}."layer_ratio_wo_stock_plus_buffer" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: order_count {
    type: number
    sql: ${TABLE}."order_count" ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}."orders" ;;
  }

  dimension: pallete_amount {
    type: number
    sql: ${TABLE}."pallete_amount" ;;
  }

  dimension: pallete_ratio {
    type: number
    sql: ${TABLE}."pallete_ratio" ;;
  }

  dimension: pallete_ratio_wo_stock {
    type: number
    sql: ${TABLE}."pallete_ratio_wo_stock" ;;
  }

  dimension: pallete_ratio_wo_stock_plus_buffer {
    type: number
    sql: ${TABLE}."pallete_ratio_wo_stock_plus_buffer" ;;
  }

  dimension: pipeline_name {
    type: string
    sql: ${TABLE}."pipeline_name" ;;
  }

  dimension: start_day {
    type: string
    sql: ${TABLE}."start_day" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: supplier_unique_id {
    type: string
    sql: ${TABLE}."supplier_unique_id" ;;
  }

  dimension: temperature_mode {
    type: string
    sql: ${TABLE}."temperature_mode" ;;
  }

  dimension: timeslot_booking_user {
    type: string
    sql: ${TABLE}."timeslot_booking_user" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."warehouse_inventory_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, supplier_name, name, pipeline_name]
  }
}
