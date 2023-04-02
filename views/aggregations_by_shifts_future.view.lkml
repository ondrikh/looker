view: aggregations_by_shifts_future {
  sql_table_name: "WORKSPACE_233686783"."aggregations_by_shifts_future"
    ;;

  dimension: anaplan_orders_per_hour {
    type: number
    sql: ${TABLE}."anaplan_orders_per_hour" ;;
  }

  dimension: avg_order_per_slot {
    type: number
    sql: ${TABLE}."avg_order_per_slot" ;;
  }

  dimension: avg_order_per_slot_ignore_week_day {
    type: number
    sql: ${TABLE}."avg_order_per_slot_ignore_week_day" ;;
  }

  dimension: avg_orders_per_slot_final {
    type: number
    sql: ${TABLE}."avg_orders_per_slot_final" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."date" ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}."day_of_week" ;;
  }

  dimension: help_column {
    type: number
    sql: ${TABLE}."help_column" ;;
  }

  dimension: shift_name {
    type: string
    sql: ${TABLE}."shift_name" ;;
  }

  dimension: shift_order {
    type: string
    sql: ${TABLE}."shift_order" ;;
  }

  dimension: shift_since {
    type: string
    sql: ${TABLE}."shift_since" ;;
  }

  dimension: shift_till {
    type: string
    sql: ${TABLE}."shift_till" ;;
  }

  dimension: shift_unique_id {
    type: string
    sql: ${TABLE}."shift_unique_id" ;;
  }

  dimension: slot_of_real_delivery {
    type: string
    sql: ${TABLE}."slot_of_real_delivery" ;;
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
    drill_fields: [shift_name, warehouse_name]
  }
}
