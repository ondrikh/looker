view: goals_for_sharp_metrics_tettra {
  sql_table_name: "WORKSPACE_233686783"."goals_for_sharp_metrics_tettra"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: day {
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
    sql: ${TABLE}."day" ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}."month" ;;
  }

  dimension: target_aov_eur {
    type: number
    sql: ${TABLE}."target_aov_eur" ;;
  }

  dimension: target_fc_productivity {
    type: number
    sql: ${TABLE}."target_fc_productivity" ;;
  }

  dimension: target_ftus {
    type: number
    sql: ${TABLE}."target_ftus" ;;
  }

  dimension: target_mau {
    type: number
    sql: ${TABLE}."target_mau" ;;
  }

  dimension: target_orders {
    type: number
    sql: ${TABLE}."target_orders" ;;
  }

  dimension: target_perfect_orders {
    type: number
    sql: ${TABLE}."target_perfect_orders" ;;
  }

  dimension: warehouse {
    type: string
    sql: ${TABLE}."warehouse" ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}."year" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
