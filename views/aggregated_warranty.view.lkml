view: aggregated_warranty {
  sql_table_name: "WORKSPACE_233686783"."aggregated_warranty"
    ;;

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

  dimension: order_count {
    type: number
    sql: ${TABLE}."order_count" ;;
  }

  dimension: pipeline_type {
    type: string
    sql: ${TABLE}."pipeline_type" ;;
  }

  dimension: reason_cat {
    type: string
    sql: ${TABLE}."reason_cat" ;;
  }

  dimension: warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."warehouse_inventory_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
