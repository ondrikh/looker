view: l3_categories_total {
  sql_table_name: "WORKSPACE_233686783"."l3_categories_total"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}."date" ;;
  }

  dimension: l3_count {
    type: number
    sql: ${TABLE}."l3_count" ;;
  }

  dimension: l3_type {
    type: string
    sql: ${TABLE}."l3_type" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
