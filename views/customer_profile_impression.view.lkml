view: customer_profile_impression {
  sql_table_name: "WORKSPACE_233686783"."customer_profile_impression"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: engagement {
    type: string
    sql: ${TABLE}."engagement" ;;
  }

  dimension_group: event {
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
    sql: ${TABLE}."event_time" ;;
  }

  dimension: question_set {
    type: string
    sql: ${TABLE}."question_set" ;;
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

  dimension: visit_id {
    type: string
    sql: ${TABLE}."visit_id" ;;
  }

  dimension: visit_unique_id {
    type: string
    sql: ${TABLE}."visit_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [user.id]
  }
}
