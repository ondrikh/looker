view: forecast_accuracy {
  sql_table_name: "WORKSPACE_233686783"."forecast_accuracy"
    ;;

  dimension: availability {
    type: number
    sql: ${TABLE}."availability" ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."date" ;;
  }

  dimension: ensemble {
    type: number
    sql: ${TABLE}."ensemble" ;;
  }

  dimension: fc_penetration_actual {
    type: number
    sql: ${TABLE}."fc_penetration_actual" ;;
  }

  dimension: fc_penetration_ly {
    type: number
    sql: ${TABLE}."fc_penetration_ly" ;;
  }

  dimension: fc_rolling_mean {
    type: number
    sql: ${TABLE}."fc_rolling_mean" ;;
  }

  dimension: fc_xgb_ensemble {
    type: number
    sql: ${TABLE}."fc_xgb_ensemble" ;;
  }

  dimension: final_forecast {
    type: number
    sql: ${TABLE}."final_forecast" ;;
  }

  dimension: is_expiration {
    type: string
    sql: ${TABLE}."is_expiration" ;;
  }

  dimension: is_sale {
    type: string
    sql: ${TABLE}."is_sale" ;;
  }

  dimension: lr_ma {
    type: number
    sql: ${TABLE}."lr_ma" ;;
  }

  dimension: lr_ma_ord {
    type: number
    sql: ${TABLE}."lr_ma_ord" ;;
  }

  dimension: prophet {
    type: number
    sql: ${TABLE}."prophet" ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}."sales" ;;
  }

  dimension: sales_orig {
    type: number
    sql: ${TABLE}."sales_orig" ;;
  }

  dimension_group: time_forecasted {
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
    sql: ${TABLE}."time_forecasted" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
