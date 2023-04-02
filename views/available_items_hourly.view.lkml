view: available_items_hourly {
  sql_table_name: "WORKSPACE_233686783"."available_items_hourly"
    ;;

  dimension: amount {
    type: number
    sql: ${TABLE}."amount" ;;
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
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."date" ;;
  }

  dimension: enabled {
    type: number
    sql: ${TABLE}."enabled" ;;
  }

  dimension: long_term_unavailability {
    type: number
    sql: ${TABLE}."long_term_unavailability" ;;
  }

  dimension: sales_strategy_delta {
    type: number
    sql: ${TABLE}."sales_strategy_delta" ;;
  }

  dimension: unavailability_reason {
    type: string
    sql: ${TABLE}."unavailability_reason" ;;
  }

  dimension: warehouse_inventory_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."warehouse_inventory_id" ;;
  }

  dimension: warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."warehouse_inventory_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [warehouse_inventory.warehouse_name, warehouse_inventory.id, warehouse_inventory.country_of_origin_name, warehouse_inventory.primary_supplier_name]
  }
}
