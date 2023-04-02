view: customer_profile_user_split {
  sql_table_name: "WORKSPACE_233686783"."customer_profile_user_split"
    ;;

  dimension: ftu {
    type: string
    sql: ${TABLE}."ftu" ;;
  }

  dimension: last_order_sequence_before_cp_filled {
    type: number
    sql: ${TABLE}."last_order_sequence_before_cp_filled" ;;
  }

  dimension: logged_user {
    type: string
    sql: ${TABLE}."logged_user" ;;
  }

  dimension: orders {
    type: string
    sql: ${TABLE}."orders" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: user_draft_unique_id {
    type: string
    sql: ${TABLE}."user_draft_unique_id" ;;
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
