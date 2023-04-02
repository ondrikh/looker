view: slots_overview_hourly {
  sql_table_name: "WORKSPACE_233686783"."slots_overview_hourly"
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

  dimension: full_slots {
    type: number
    sql: ${TABLE}."full_slots" ;;
  }

  dimension: hour_till {
    type: number
    sql: ${TABLE}."hour_till" ;;
  }

  dimension: slots_total {
    type: number
    sql: ${TABLE}."slots_total" ;;
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
