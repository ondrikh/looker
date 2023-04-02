view: report_slots_zones_limit {
  sql_table_name: "WORKSPACE_233686783"."report_slots_zones_limit"
    ;;

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
    sql: ${TABLE}."date_date" ;;
  }

  dimension: full {
    type: string
    sql: ${TABLE}."full" ;;
  }

  dimension: max_dispatching_orders {
    type: number
    sql: ${TABLE}."max_dispatching_orders" ;;
  }

  dimension: order_count {
    type: number
    sql: ${TABLE}."order_count" ;;
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

  dimension: store {
    type: string
    sql: ${TABLE}."store" ;;
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

  dimension: zone_city {
    type: string
    sql: ${TABLE}."zone_city" ;;
  }

  dimension: zone_name {
    type: string
    sql: ${TABLE}."zone_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [zone_name]
  }
}
