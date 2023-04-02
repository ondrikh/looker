view: order_plan_evaluation {
  sql_table_name: "WORKSPACE_233686783"."order_plan_evaluation"
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

  dimension: order_plan_1d {
    type: number
    sql: ${TABLE}."order_plan_1d" ;;
  }

  dimension: order_plan_1w {
    type: number
    sql: ${TABLE}."order_plan_1w" ;;
  }

  dimension: order_plan_2w {
    type: number
    sql: ${TABLE}."order_plan_2w" ;;
  }

  dimension: order_plan_6w {
    type: number
    sql: ${TABLE}."order_plan_6w" ;;
  }

  dimension: order_plan_last_snapshot {
    type: number
    sql: ${TABLE}."order_plan_last_snapshot" ;;
  }

  dimension: prediction_1d {
    type: number
    sql: ${TABLE}."prediction_1d" ;;
  }

  dimension: prediction_1w {
    type: number
    sql: ${TABLE}."prediction_1w" ;;
  }

  dimension: prediction_2w {
    type: number
    sql: ${TABLE}."prediction_2w" ;;
  }

  dimension: prediction_6w {
    type: number
    sql: ${TABLE}."prediction_6w" ;;
  }

  dimension: prediction_last_snapshot {
    type: number
    sql: ${TABLE}."prediction_last_snapshot" ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}."reason" ;;
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
