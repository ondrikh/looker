view: supply_kpi_replenishments {
  sql_table_name: "WORKSPACE_233686783"."supply_kpi_replenishments"
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

  dimension: priority {
    type: string
    sql: ${TABLE}."priority" ;;
  }

  dimension: replenishment_requests {
    type: number
    sql: ${TABLE}."replenishment_requests" ;;
  }

  dimension: solution {
    type: string
    sql: ${TABLE}."solution" ;;
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
