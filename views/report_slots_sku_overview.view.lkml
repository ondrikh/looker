view: report_slots_sku_overview {
  sql_table_name: "WORKSPACE_233686783"."report_slots_sku_overview"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: dispatch {
    type: number
    sql: ${TABLE}."dispatch" ;;
  }

  dimension: dispatch_limit {
    type: number
    sql: ${TABLE}."dispatch_limit" ;;
  }

  dimension: express {
    type: number
    sql: ${TABLE}."express" ;;
  }

  dimension: express_done {
    type: number
    sql: ${TABLE}."express_done" ;;
  }

  dimension: express_limit {
    type: number
    sql: ${TABLE}."express_limit" ;;
  }

  dimension: free_for_non_premium {
    type: string
    sql: ${TABLE}."free_for_non_premium" ;;
  }

  dimension: max_dispatching_orders {
    type: number
    sql: ${TABLE}."max_dispatching_orders" ;;
  }

  dimension: on_time {
    type: number
    sql: ${TABLE}."on_time" ;;
  }

  dimension: on_time_done {
    type: number
    sql: ${TABLE}."on_time_done" ;;
  }

  dimension: on_time_limit {
    type: number
    sql: ${TABLE}."on_time_limit" ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}."orders_count" ;;
  }

  dimension: premium {
    type: number
    sql: ${TABLE}."premium" ;;
  }

  dimension: premium_done {
    type: number
    sql: ${TABLE}."premium_done" ;;
  }

  dimension: premium_limit {
    type: number
    sql: ${TABLE}."premium_limit" ;;
  }

  dimension_group: since {
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
    sql: ${TABLE}."since" ;;
  }

  dimension: snapshot_sequence_number {
    type: number
    sql: ${TABLE}."snapshot_sequence_number" ;;
  }

  dimension: store_id {
    type: string
    sql: ${TABLE}."store_id" ;;
  }

  dimension: store_unique_id {
    type: string
    sql: ${TABLE}."store_unique_id" ;;
  }

  dimension_group: till {
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
    sql: ${TABLE}."till" ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}."timestamp" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [warehouse_name]
  }
}
