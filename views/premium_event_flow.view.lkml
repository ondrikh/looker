view: premium_event_flow {
  sql_table_name: "WORKSPACE_233686783"."premium_event_flow"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: delay {
    type: number
    sql: ${TABLE}."delay" ;;
  }

  dimension: join_key {
    type: number
    sql: ${TABLE}."join_key" ;;
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
    type: number
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

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [user.id]
  }
}
