view: newsletter_blacklist_sort {
  sql_table_name: "WORKSPACE_233686783"."newsletter_blacklist_sort"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: rn {
    type: number
    sql: ${TABLE}."rn" ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}."snapshot_date" ;;
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
