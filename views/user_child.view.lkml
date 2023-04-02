view: user_child {
  sql_table_name: "WORKSPACE_233686783"."user_child"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension_group: birthday {
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
    sql: ${TABLE}."birthday" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}."sex" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, user.id]
  }
}
