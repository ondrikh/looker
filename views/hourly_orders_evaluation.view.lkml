view: hourly_orders_evaluation {
  sql_table_name: "WORKSPACE_233686783"."hourly_orders_evaluation"
    ;;

  dimension: anaplan_orders {
    type: number
    sql: ${TABLE}."anaplan_orders" ;;
  }

  dimension: anaplan_orders_ratio {
    type: number
    sql: ${TABLE}."anaplan_orders_ratio" ;;
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

  dimension: hour {
    type: string
    sql: ${TABLE}."hour" ;;
  }

  dimension: order_ratio {
    type: number
    sql: ${TABLE}."order_ratio" ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}."orders" ;;
  }

  dimension: predicted_orders {
    type: number
    sql: ${TABLE}."predicted_orders" ;;
  }

  dimension: predicted_orders_ratio {
    type: number
    sql: ${TABLE}."predicted_orders_ratio" ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}."snapshot_date" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
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
