view: daktela_logging {
  sql_table_name: "WORKSPACE_233686783"."daktela_logging"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: agent_email {
    type: string
    sql: ${TABLE}."agent_email" ;;
  }

  dimension: agent_name {
    type: string
    sql: ${TABLE}."agent_name" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: duration_hrs {
    type: number
    sql: ${TABLE}."duration_hrs" ;;
  }

  dimension: duration_pause_hrs {
    type: number
    sql: ${TABLE}."duration_pause_hrs" ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}."end_time" ;;
  }

  dimension_group: end_time_pause {
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
    sql: ${TABLE}."end_time_pause" ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}."group_name" ;;
  }

  dimension: id_agent_name {
    type: string
    sql: ${TABLE}."id_agent_name" ;;
  }

  dimension: id_pause {
    type: string
    sql: ${TABLE}."id_pause" ;;
  }

  dimension: pause_type {
    type: string
    sql: ${TABLE}."pause_type" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."start_time" ;;
  }

  dimension_group: start_time_pause {
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
    sql: ${TABLE}."start_time_pause" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, agent_name, group_name, id_agent_name]
  }
}
