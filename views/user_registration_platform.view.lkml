view: user_registration_platform {
  sql_table_name: "WORKSPACE_233686783"."user_registration_platform"
    ;;

  dimension: origin_platform {
    type: string
    sql: ${TABLE}."origin_platform" ;;
  }

  dimension: registration_method {
    type: string
    sql: ${TABLE}."registration_method" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
