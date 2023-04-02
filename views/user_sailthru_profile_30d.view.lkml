view: user_sailthru_profile_30d {
  sql_table_name: "WORKSPACE_233686783"."user_sailthru_profile_30d"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: sailthru_profile_url {
    type: string
    sql: ${TABLE}."sailthru_profile_url" ;;
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
