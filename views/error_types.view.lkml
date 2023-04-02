view: error_types {
  sql_table_name: "WORKSPACE_233686783"."error_types"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."Country" ;;
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
    sql: ${TABLE}."Date" ;;
  }

  dimension: error_label {
    type: string
    sql: ${TABLE}."Error Label" ;;
  }

  dimension: error_type {
    type: string
    sql: ${TABLE}."Error Type" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."Order ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [order.courier_name, order.warehouse_name, order.delivery_point_name, order.id]
  }
}
