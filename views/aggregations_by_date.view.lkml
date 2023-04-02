view: aggregations_by_date {
  sql_table_name: "WORKSPACE_233686783"."aggregations_by_date"
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

  dimension: average_orders_per_shift {
    type: number
    sql: ${TABLE}."average_orders_per_shift" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: couriers_per_day {
    type: number
    sql: ${TABLE}."couriers_per_day" ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}."day_of_week" ;;
  }

  dimension: full_day_name_of_weekday {
    type: string
    sql: ${TABLE}."full_day_name_of_weekday" ;;
  }

  dimension: number_of_shifts {
    type: number
    sql: ${TABLE}."number_of_shifts" ;;
  }

  dimension: short_day_name_of_weekday {
    type: string
    sql: ${TABLE}."short_day_name_of_weekday" ;;
  }

  dimension: total_orders {
    type: number
    sql: ${TABLE}."total_orders" ;;
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
    drill_fields: [warehouse_name]
  }
}
