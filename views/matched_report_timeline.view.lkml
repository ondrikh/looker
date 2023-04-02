view: matched_report_timeline {
  sql_table_name: "WORKSPACE_233686783"."matched_report_timeline"
    ;;

  dimension: competitor {
    type: string
    sql: ${TABLE}."competitor" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date_collected {
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
    sql: ${TABLE}."date_collected" ;;
  }

  dimension: number_of_products_received {
    type: number
    sql: ${TABLE}."number_of_products_received" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
