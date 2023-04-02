view: aggregations_by_slot_of_delivery_real {
  sql_table_name: "WORKSPACE_233686783"."aggregations_by_slot_of_delivery_real"
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

  dimension: avg_order_per_slot {
    type: number
    sql: ${TABLE}."avg_order_per_slot" ;;
  }

  dimension: avg_order_per_slot_per_courier {
    type: number
    sql: ${TABLE}."avg_order_per_slot_per_courier" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}."day_of_week" ;;
  }

  dimension: full_day_name_of_weekday {
    type: string
    sql: ${TABLE}."full_day_name_of_weekday" ;;
  }

  dimension: short_day_name_of_weekday {
    type: string
    sql: ${TABLE}."short_day_name_of_weekday" ;;
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
    drill_fields: [warehouse_name]
  }
}
