view: warehouse_activities_machine {
  sql_table_name: "WORKSPACE_233686783"."warehouse_activities_machine"
    ;;

  dimension: activity {
    type: string
    sql: ${TABLE}."activity" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date_deliver_to_customer {
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
    sql: ${TABLE}."DATE_deliver_to_customer_at" ;;
  }

  dimension_group: date_pick_till {
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
    sql: ${TABLE}."DATE_pick_till" ;;
  }

  dimension: hour_deliver_to_customer_at {
    type: number
    sql: ${TABLE}."HOUR_deliver_to_customer_at" ;;
  }

  dimension: hour_pick_till {
    type: number
    sql: ${TABLE}."HOUR_pick_till" ;;
  }

  dimension: job_count {
    type: number
    sql: ${TABLE}."job_count" ;;
  }

  dimension: month_deliver_to_customer {
    type: number
    sql: ${TABLE}."MONTH_deliver_to_customer" ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}."orders" ;;
  }

  dimension: sector_pipeline {
    type: string
    sql: ${TABLE}."sector_pipeline" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  dimension: weekday_deliver_to_customer_at {
    type: number
    sql: ${TABLE}."WEEKDAY_deliver_to_customer_at" ;;
  }

  dimension: weekday_pick_till {
    type: number
    sql: ${TABLE}."WEEKDAY_pick_till" ;;
  }

  dimension: year_deliver_to_customer {
    type: number
    sql: ${TABLE}."YEAR_deliver_to_customer" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
