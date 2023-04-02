view: order_plan_view {
  sql_table_name: "WORKSPACE_233686783"."order_plan_view"
    ;;

  dimension: actual_orders {
    type: number
    sql: ${TABLE}."actual_orders" ;;
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

  dimension: is_blacklisted {
    type: yesno
    sql: ${TABLE}."is_blacklisted" ;;
  }

  dimension: order_plan {
    type: number
    sql: ${TABLE}."order_plan" ;;
  }

  dimension: prediction {
    type: number
    sql: ${TABLE}."prediction" ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}."reason" ;;
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

  dimension: warehouse_id {
    type: number
    sql: ${TABLE}."warehouse_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
