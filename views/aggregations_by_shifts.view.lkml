view: aggregations_by_shifts {
  sql_table_name: "WORKSPACE_233686783"."aggregations_by_shifts"
    ;;

  dimension_group: arrival {
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
    sql: ${TABLE}."arrival_date" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: couriers_per_shift {
    type: number
    sql: ${TABLE}."couriers_per_shift" ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}."day_of_week" ;;
  }

  dimension: full_day_name_of_weekday {
    type: string
    sql: ${TABLE}."full_day_name_of_weekday" ;;
  }

  dimension: shift_end {
    type: string
    sql: ${TABLE}."shift_end" ;;
  }

  dimension: shift_name {
    type: string
    sql: ${TABLE}."shift_name" ;;
  }

  dimension: shift_order {
    type: string
    sql: ${TABLE}."shift_order" ;;
  }

  dimension: shift_start {
    type: string
    sql: ${TABLE}."shift_start" ;;
  }

  dimension: shift_unique_id {
    type: string
    sql: ${TABLE}."shift_unique_id" ;;
  }

  dimension: short_day_name_of_weekday {
    type: string
    sql: ${TABLE}."short_day_name_of_weekday" ;;
  }

  dimension: slot_of_real_delivery {
    type: string
    sql: ${TABLE}."slot_of_real_delivery" ;;
  }

  dimension: total_orders_per_shift_day {
    type: number
    sql: ${TABLE}."total_orders_per_shift_day" ;;
  }

  dimension: total_orders_per_slot {
    type: number
    sql: ${TABLE}."total_orders_per_slot" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [warehouse_name, shift_name]
  }
}
