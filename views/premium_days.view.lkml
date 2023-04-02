view: premium_days {
  sql_table_name: "WORKSPACE_233686783"."premium_days"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."date" ;;
  }

  dimension: delay {
    type: number
    sql: ${TABLE}."delay" ;;
  }

  dimension_group: next_event {
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
    sql: ${TABLE}."next_event_date" ;;
  }

  dimension: next_event_type {
    type: string
    sql: ${TABLE}."next_event_type" ;;
  }

  dimension: num_of_subscription {
    type: string
    sql: ${TABLE}."num_of_subscription" ;;
  }

  dimension_group: start_event {
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
    sql: ${TABLE}."start_event_date" ;;
  }

  dimension: start_event_type {
    type: string
    sql: ${TABLE}."start_event_type" ;;
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
