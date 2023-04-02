view: exit_rate {
  sql_table_name: "WORKSPACE_233686783"."exit_rate"
    ;;

  dimension: checkouts {
    type: number
    sql: ${TABLE}."Checkouts" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."Country" ;;
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
    sql: ${TABLE}."Date" ;;
  }

  dimension: exit_rate_at_checkout {
    type: number
    sql: ${TABLE}."Exit rate at checkout" ;;
  }

  dimension: exitors_at_checkout {
    type: number
    sql: ${TABLE}."Exitors at checkout" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
