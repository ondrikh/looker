view: vendor_budget_daily {
  sql_table_name: "WORKSPACE_233686783"."vendor_budget_daily"
    ;;

  dimension: budget_daily {
    type: number
    sql: ${TABLE}."budget_daily" ;;
  }

  dimension: budget_total {
    type: string
    sql: ${TABLE}."budget_total" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: days {
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
    sql: ${TABLE}."days" ;;
  }

  dimension: deleted {
    type: string
    sql: ${TABLE}."deleted" ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}."duration" ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}."end" ;;
  }

  dimension: id_campaign {
    type: string
    sql: ${TABLE}."id_campaign" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."start" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: supplier {
    type: string
    sql: ${TABLE}."supplier" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
