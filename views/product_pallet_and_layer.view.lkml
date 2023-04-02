view: product_pallet_and_layer {
  sql_table_name: "WORKSPACE_233686783"."product_pallet_and_layer"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
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

  dimension: is_layer {
    type: number
    sql: ${TABLE}."is_layer" ;;
  }

  dimension: is_pallet {
    type: number
    sql: ${TABLE}."is_pallet" ;;
  }

  dimension: layer {
    type: number
    sql: ${TABLE}."layer" ;;
  }

  dimension: layer_amount {
    type: number
    sql: ${TABLE}."layer_amount" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: order_count_pieces {
    type: number
    sql: ${TABLE}."order_count_pieces" ;;
  }

  dimension: pallet {
    type: number
    sql: ${TABLE}."pallet" ;;
  }

  dimension: pallet_amount {
    type: number
    sql: ${TABLE}."pallet_amount" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
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
    drill_fields: [name, supplier_name]
  }
}
