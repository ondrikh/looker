view: anaplan_alignment {
  sql_table_name: "WORKSPACE_233686783"."anaplan_alignment"
    ;;

  dimension: act_orders {
    type: string
    sql: ${TABLE}."act_orders" ;;
  }

  dimension: budget {
    type: number
    sql: ${TABLE}."budget" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: current_orders_forecast {
    type: string
    sql: ${TABLE}."current_orders_forecast" ;;
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

  dimension: day_of_week {
    type: string
    sql: ${TABLE}."day_of_week" ;;
  }

  dimension: fc_capacity_input_order_lines {
    type: string
    sql: ${TABLE}."fc_capacity_input_order_lines" ;;
  }

  dimension: fc_capacity_input_orders {
    type: string
    sql: ${TABLE}."fc_capacity_input_orders" ;;
  }

  dimension: gap_to_budget {
    type: number
    sql: ${TABLE}."gap_to_budget" ;;
  }

  dimension: lm_capacity_input_orders {
    type: string
    sql: ${TABLE}."lm_capacity_input_orders" ;;
  }

  dimension: marketing_prediction {
    type: string
    sql: ${TABLE}."marketing_prediction" ;;
  }

  dimension: skus_per_order_act {
    type: string
    sql: ${TABLE}."SKUs_per_order_act" ;;
  }

  dimension: skus_per_order_input {
    type: string
    sql: ${TABLE}."SKUs_per_order_input" ;;
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
