view: feature_users_ab_test {
  sql_table_name: "WORKSPACE_233686783"."feature_users_ab_test"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: enabled_since {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."enabled_since" ;;
  }

  dimension_group: enabled_till {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."enabled_till" ;;
  }

  dimension: exclusive_type {
    type: string
    sql: ${TABLE}."exclusive_type" ;;
  }

  dimension: feature_name {
    type: string
    sql: ${TABLE}."feature_name" ;;
  }

  dimension: feature_user_group {
    type: string
    sql: ${TABLE}."feature_user_group" ;;
  }

  dimension: feature_version {
    type: number
    sql: ${TABLE}."feature_version" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [feature_name]
  }
}
