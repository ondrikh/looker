view: premium_membership_churn {
  sql_table_name: "WORKSPACE_233686783"."premium_membership_churn"
    ;;

  dimension: active_users {
    type: number
    sql: ${TABLE}."active_users" ;;
  }

  dimension: churned {
    type: number
    sql: ${TABLE}."churned" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}."month" ;;
  }

  dimension: premium_type {
    type: string
    sql: ${TABLE}."premium_type" ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}."year" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
