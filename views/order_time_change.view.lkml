view: order_time_change {
  sql_table_name: "WORKSPACE_233686783"."order_time_change"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."Country" ;;
  }

  dimension_group: new_slot {
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
    sql: ${TABLE}."New slot" ;;
  }

  dimension_group: old_slot {
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
    sql: ${TABLE}."Old slot" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."Order ID" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."Order unique ID" ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}."Origin" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [order.courier_name, order.warehouse_name, order.delivery_point_name, order.id]
  }
}
