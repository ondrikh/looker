view: order_daily_forecast_view {
  sql_table_name: "WORKSPACE_233686783"."order_daily_forecast_view"
    ;;

  dimension: abs_error {
    type: number
    sql: ${TABLE}."abs_error" ;;
  }

  dimension: abs_pct_error {
    type: number
    sql: ${TABLE}."abs_pct_error" ;;
  }

  dimension: avg_order_size {
    type: number
    sql: ${TABLE}."avg_order_size" ;;
  }

  dimension: blacklist_reason {
    type: string
    sql: ${TABLE}."blacklist_reason" ;;
  }

  dimension: capacity {
    type: number
    sql: ${TABLE}."capacity" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}."domain" ;;
  }

  dimension_group: ds {
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
    sql: ${TABLE}."ds" ;;
  }

  dimension: error {
    type: number
    sql: ${TABLE}."error" ;;
  }

  dimension: fc_capacity {
    type: number
    sql: ${TABLE}."fc_capacity" ;;
  }

  dimension: fc_capacity_correction {
    type: number
    sql: ${TABLE}."fc_capacity_correction" ;;
  }

  dimension: is_blacklisted {
    type: yesno
    sql: ${TABLE}."is_blacklisted" ;;
  }

  dimension: log_capacity {
    type: number
    sql: ${TABLE}."log_capacity" ;;
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

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: warehouse_id {
    type: number
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: y {
    type: number
    sql: ${TABLE}."y" ;;
  }

  dimension: yhat {
    type: number
    sql: ${TABLE}."yhat" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
