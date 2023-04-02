view: source_group {
  sql_table_name: "WORKSPACE_233686783"."source_group"
    ;;

  dimension: source {
    type: string
    sql: ${TABLE}."source" ;;
  }

  dimension: source_group {
    type: string
    sql: ${TABLE}."source_group" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
