view: aggregated_warehouse_inventory_monthly {
  sql_table_name: "WORKSPACE_233686783"."aggregated_warehouse_inventory_monthly"
    ;;

  dimension: available_hours_percents {
    type: number
    sql: ${TABLE}."available_hours_percents" ;;
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

  dimension: enabled_percents {
    type: number
    sql: ${TABLE}."enabled_percents" ;;
  }

  dimension_group: last_sold_date_deliver {
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
    sql: ${TABLE}."last_sold_date_deliver_at" ;;
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
