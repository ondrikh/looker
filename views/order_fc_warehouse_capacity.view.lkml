view: order_fc_warehouse_capacity {
  sql_table_name: "WORKSPACE_233686783"."order_fc_warehouse_capacity"
    ;;

  dimension: availability {
    type: number
    sql: ${TABLE}."availability" ;;
  }

  dimension: avg_order {
    type: number
    sql: ${TABLE}."avg_order" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
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

  dimension: sold_out {
    type: yesno
    sql: ${TABLE}."sold_out" ;;
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
