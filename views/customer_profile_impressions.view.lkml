view: customer_profile_impressions {
  sql_table_name: "WORKSPACE_233686783"."customer_profile_impressions"
    ;;

  dimension: click_rate {
    type: number
    sql: ${TABLE}."click_rate" ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}."clicks" ;;
  }

  dimension: clicks_est {
    type: number
    sql: ${TABLE}."clicks_est" ;;
  }

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

  dimension: ftu_cp_click {
    type: number
    sql: ${TABLE}."ftu_cp_click" ;;
  }

  dimension: ftu_cp_filled {
    type: number
    sql: ${TABLE}."ftu_cp_filled" ;;
  }

  dimension: ftu_cp_impression {
    type: number
    sql: ${TABLE}."ftu_cp_impression" ;;
  }

  dimension: ftu_homepage_view {
    type: number
    sql: ${TABLE}."ftu_homepage_view" ;;
  }

  dimension: ga_share {
    type: number
    sql: ${TABLE}."ga_share" ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}."location" ;;
  }

  dimension: logged_in_user {
    type: string
    sql: ${TABLE}."logged_in_user" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: question_set {
    type: string
    sql: ${TABLE}."question_set" ;;
  }

  dimension: users_cp_filled {
    type: number
    sql: ${TABLE}."users_cp_filled" ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}."views" ;;
  }

  dimension: views_est {
    type: number
    sql: ${TABLE}."views_est" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
