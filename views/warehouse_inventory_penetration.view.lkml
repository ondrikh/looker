view: warehouse_inventory_penetration {
  sql_table_name: "WORKSPACE_233686783"."warehouse_inventory_penetration"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}."orders" ;;
  }

  dimension: packages_l30d {
    type: number
    sql: ${TABLE}."packages_l30d" ;;
  }

  dimension: sku_penetration {
    type: number
    sql: ${TABLE}."sku_penetration" ;;
  }

  dimension: sku_penetration_percent_rank {
    type: number
    sql: ${TABLE}."sku_penetration_percent_rank" ;;
  }

  dimension: total_orders {
    type: number
    sql: ${TABLE}."total_orders" ;;
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
    drill_fields: []
  }
}
