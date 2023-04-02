view: anaplan_orders_by_hour_unpivot {
  sql_table_name: "WORKSPACE_233686783"."anaplan_orders_by_hour_unpivot"
    ;;

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
    type: number
    sql: ${TABLE}."hour" ;;
  }

  dimension: planned_orders {
    type: number
    sql: ${TABLE}."planned_orders" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."Warehouse_Unique_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
