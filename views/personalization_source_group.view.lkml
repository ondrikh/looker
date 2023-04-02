view: personalization_source_group {
  sql_table_name: "WORKSPACE_233686783"."personalization_source_group"
    ;;

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."source" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
