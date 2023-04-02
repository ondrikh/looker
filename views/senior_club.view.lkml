view: senior_club {
  sql_table_name: "WORKSPACE_233686783"."senior_club"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: valid {
    type: string
    sql: ${TABLE}."valid" ;;
  }

  dimension_group: valid_since {
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
    sql: ${TABLE}."valid_since" ;;
  }

  dimension_group: valid_till {
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
    sql: ${TABLE}."valid_till" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
