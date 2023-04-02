view: recipe_performance {
  sql_table_name: "WORKSPACE_233686783"."recipe_performance"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: deliver {
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
    sql: ${TABLE}."deliver_at" ;;
  }

  dimension: ga_session_id {
    type: string
    sql: ${TABLE}."ga_session_id" ;;
  }

  dimension: ga_session_unique_id {
    type: string
    sql: ${TABLE}."ga_session_unique_id" ;;
  }

  dimension_group: impression {
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
    sql: ${TABLE}."impression_time" ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}."location" ;;
  }

  dimension: order_state {
    type: string
    sql: ${TABLE}."order_state" ;;
  }

  dimension_group: order {
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
    sql: ${TABLE}."order_time" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: recipe_id {
    type: string
    sql: ${TABLE}."recipe_id" ;;
  }

  dimension: recipe_name {
    type: string
    sql: ${TABLE}."recipe_name" ;;
  }

  dimension: recipe_open {
    type: string
    sql: ${TABLE}."recipe_open" ;;
  }

  dimension_group: recipe_open {
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
    sql: ${TABLE}."recipe_open_time" ;;
  }

  dimension: recipe_unique_id {
    type: string
    sql: ${TABLE}."recipe_unique_id" ;;
  }

  dimension: recipe_url_name {
    type: string
    sql: ${TABLE}."recipe_url_name" ;;
  }

  dimension: shopped_from_recipe {
    type: string
    sql: ${TABLE}."shopped_from_recipe" ;;
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

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [recipe_url_name, recipe_name, user.id]
  }
}
