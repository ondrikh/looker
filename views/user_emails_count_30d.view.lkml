view: user_emails_count_30d {
  sql_table_name: "WORKSPACE_233686783"."user_emails_count_30d"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: emails_sent {
    type: number
    sql: ${TABLE}."emails_sent" ;;
  }

  dimension: time_period {
    type: string
    sql: ${TABLE}."time_period" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
