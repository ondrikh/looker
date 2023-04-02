view: premium_event_flow_segment {
  sql_table_name: "WORKSPACE_233686783"."premium_event_flow_segment"
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

  dimension: delay_next {
    type: number
    sql: ${TABLE}."delay_next" ;;
  }

  dimension: delay_previous {
    type: number
    sql: ${TABLE}."delay_previous" ;;
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

  dimension_group: next_event_date_previous {
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
    sql: ${TABLE}."next_event_date_previous" ;;
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

  dimension_group: start_event_date_next {
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
    sql: ${TABLE}."start_event_date_next" ;;
  }

  dimension: start_event_type {
    type: string
    sql: ${TABLE}."start_event_type" ;;
  }

  dimension: start_event_type_next {
    type: string
    sql: ${TABLE}."start_event_type_next" ;;
  }

  dimension: start_event_type_previous {
    type: string
    sql: ${TABLE}."start_event_type_previous" ;;
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
