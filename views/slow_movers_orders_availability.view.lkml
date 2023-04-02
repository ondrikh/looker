view: slow_movers_orders_availability {
  sql_table_name: "WORKSPACE_233686783"."slow_movers_orders_availability"
    ;;

  dimension: availability {
    type: number
    sql: ${TABLE}."availability" ;;
  }

  dimension: availability_1x {
    type: number
    sql: ${TABLE}."availability_1x" ;;
  }

  dimension: availability_2x {
    type: number
    sql: ${TABLE}."availability_2x" ;;
  }

  dimension: availability_3x {
    type: number
    sql: ${TABLE}."availability_3x" ;;
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

  dimension: is_slow_mover {
    type: string
    sql: ${TABLE}."is_slow_mover" ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}."sales" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: warehouse_amount_1x {
    type: number
    sql: ${TABLE}."warehouse_amount_1x" ;;
  }

  dimension: warehouse_amount_2x {
    type: number
    sql: ${TABLE}."warehouse_amount_2x" ;;
  }

  dimension: warehouse_amount_3x {
    type: number
    sql: ${TABLE}."warehouse_amount_3x" ;;
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
    drill_fields: [supplier_name]
  }
}
