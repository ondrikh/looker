view: l2_categories_total {
  sql_table_name: "WORKSPACE_233686783"."l2_categories_total"
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
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."date" ;;
  }

  dimension: l2_count {
    type: number
    sql: ${TABLE}."l2_count" ;;
  }

  dimension: l2_type {
    type: string
    sql: ${TABLE}."l2_type" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
