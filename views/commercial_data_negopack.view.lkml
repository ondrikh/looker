view: commercial_data_negopack {
  sql_table_name: "WORKSPACE_233686783"."commercial_data_negopack"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: metric {
    type: string
    sql: ${TABLE}."Metric" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."Name" ;;
  }

  dimension: relevant_year {
    type: string
    sql: ${TABLE}."relevant_year" ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}."Value" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
