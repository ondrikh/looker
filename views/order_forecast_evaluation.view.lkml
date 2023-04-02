view: order_forecast_evaluation {
  sql_table_name: "WORKSPACE_233686783"."order_forecast_evaluation"
    ;;

  dimension: anaplan_reverse_by_time {
    type: number
    sql: ${TABLE}."anaplan_reverse_by_time" ;;
  }

  dimension: comb_demand {
    type: number
    sql: ${TABLE}."comb_demand" ;;
  }

  dimension: comb_orders {
    type: number
    sql: ${TABLE}."comb_orders" ;;
  }

  dimension: comb_orders_by_time {
    type: number
    sql: ${TABLE}."comb_orders_by_time" ;;
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

  dimension_group: day_of_prediction {
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
    sql: ${TABLE}."day_of_prediction" ;;
  }

  dimension: demand {
    type: number
    sql: ${TABLE}."demand" ;;
  }

  dimension: order_plan {
    type: number
    sql: ${TABLE}."order_plan" ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}."orders" ;;
  }

  dimension: orders_by_time {
    type: number
    sql: ${TABLE}."orders_by_time" ;;
  }

  dimension: orders_current {
    type: number
    sql: ${TABLE}."orders_current" ;;
  }

  dimension: prophet_demand {
    type: number
    sql: ${TABLE}."prophet_demand" ;;
  }

  dimension: prophet_orders {
    type: number
    sql: ${TABLE}."prophet_orders" ;;
  }

  dimension: prophet_orders_by_time {
    type: number
    sql: ${TABLE}."prophet_orders_by_time" ;;
  }

  dimension: sch_forecast_orders {
    type: number
    sql: ${TABLE}."sch_forecast_orders" ;;
  }

  dimension: sch_forecast_orders_by_time {
    type: number
    sql: ${TABLE}."sch_forecast_orders_by_time" ;;
  }

  dimension: unavailability {
    type: number
    sql: ${TABLE}."unavailability" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  dimension: warehouse_type {
    type: string
    sql: ${TABLE}."warehouse_type" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  dimension: xgboost_demand {
    type: number
    sql: ${TABLE}."xgboost_demand" ;;
  }

  dimension: xgboost_orders {
    type: number
    sql: ${TABLE}."xgboost_orders" ;;
  }

  dimension: xgboost_orders_by_time {
    type: number
    sql: ${TABLE}."xgboost_orders_by_time" ;;
  }

  measure: count {
    type: count
    drill_fields: [warehouse_name]
  }
}
