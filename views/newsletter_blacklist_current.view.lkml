view: newsletter_blacklist_current {
  sql_table_name: "WORKSPACE_233686783"."newsletter_blacklist_current"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: type_of_blacklist {
    type: string
    sql: ${TABLE}."type_of_blacklist" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension_group: when_unsubscribe {
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
    sql: ${TABLE}."when_unsubscribe" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
