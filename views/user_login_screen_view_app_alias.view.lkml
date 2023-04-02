view: user_login_screen_view_app_alias {
  sql_table_name: "WORKSPACE_233686783"."user_login_screen_view_app_alias"
    ;;

  dimension: authorisation_method {
    type: string
    sql: ${TABLE}."authorisation_method" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: event_date {
    type: string
    sql: ${TABLE}."event_date" ;;
  }

  dimension: flag_authorised {
    type: string
    sql: ${TABLE}."flag_authorised" ;;
  }

  dimension: flag_session {
    type: string
    sql: ${TABLE}."flag_session" ;;
  }

  dimension: ga_session_id {
    type: string
    sql: ${TABLE}."ga_session_id" ;;
  }

  dimension: ga_session_unique_id {
    type: string
    sql: ${TABLE}."ga_session_unique_id" ;;
  }

  dimension_group: homepage_screen_datetime {
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
    sql: ${TABLE}."homepage_screen_datetime" ;;
  }

  dimension_group: last_login_attempt_datetime {
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
    sql: ${TABLE}."last_login_attempt_datetime" ;;
  }

  dimension: onboarding_time_second {
    type: string
    sql: ${TABLE}."onboarding_time_second" ;;
  }

  dimension: operating_system {
    type: string
    sql: ${TABLE}."operating_system" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension_group: session_onb_screen_datetime {
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
    sql: ${TABLE}."session_onb_screen_datetime" ;;
  }

  dimension_group: session_start_datetime {
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
    sql: ${TABLE}."session_start_datetime" ;;
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}."user_pseudo_id" ;;
  }

  dimension: user_pseudo_unique_id {
    type: string
    sql: ${TABLE}."user_pseudo_unique_id" ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}."version" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
