view: capacity_orders {
  sql_table_name: "WORKSPACE_233686783"."capacity_orders"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}."domain" ;;
  }

  dimension: max_dispatching_orders {
    type: number
    sql: ${TABLE}."max_dispatching_orders" ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}."orders_count" ;;
  }

  dimension: sku_limit {
    type: number
    sql: ${TABLE}."sku_limit" ;;
  }

  dimension: sku_sold {
    type: number
    sql: ${TABLE}."sku_sold" ;;
  }

  dimension_group: slot_ts {
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
    sql: ${TABLE}."slot_ts" ;;
  }

  dimension: warehouse_capacity {
    type: number
    sql: ${TABLE}."warehouse_capacity" ;;
  }

  dimension: warehouse_id {
    type: number
    sql: ${TABLE}."warehouse_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
