view: customer_segment_validity {
  sql_table_name: "WORKSPACE_233686783"."customer_segment_validity"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}."segment" ;;
  }

  dimension: success {
    type: string
    sql: ${TABLE}."success" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
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
