view: checkout_errors {
  sql_table_name: "WORKSPACE_233686783"."checkout_errors"
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
    sql: ${TABLE}."Error label" ;;
  }

  dimension: error_type {
    type: string
    sql: ${TABLE}."Error type" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."Order Id" ;;
  }

  measure: count {
    type: count
    drill_fields: [order.courier_name, order.warehouse_name, order.delivery_point_name, order.id]
  }
}
