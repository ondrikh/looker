view: onboarding_user_flow_list {
  sql_table_name: "WORKSPACE_233686783"."onboarding_user_flow_list"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: eligible {
    type: string
    sql: ${TABLE}."eligible" ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
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
