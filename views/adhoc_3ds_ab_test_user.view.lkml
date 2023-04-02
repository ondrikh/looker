view: adhoc_3ds_ab_test_user {
  sql_table_name: "WORKSPACE_233686783"."adhoc_3ds_ab_test_user"
    ;;

  dimension: feature_name {
    type: string
    sql: ${TABLE}."feature_name" ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}."group_name" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name, feature_name]
  }
}
