view: abtest_agg {
  sql_table_name: "WORKSPACE_233686783"."abtest_agg"
    ;;

  dimension: ab_test_name {
    type: string
    sql: ${TABLE}."ab_test_name" ;;
  }

  dimension: ab_test_version {
    type: number
    sql: ${TABLE}."ab_test_version" ;;
  }

  dimension: aov_country_std_l8w {
    type: number
    sql: ${TABLE}."aov_country_std_l8w" ;;
  }

  dimension: aov_group_std_l8w {
    type: number
    sql: ${TABLE}."aov_group_std_l8w" ;;
  }

  dimension: arpu_country_std_l8w {
    type: number
    sql: ${TABLE}."arpu_country_std_l8w" ;;
  }

  dimension: arpu_group_std_l8w {
    type: number
    sql: ${TABLE}."arpu_group_std_l8w" ;;
  }

  dimension: buyers_l8w {
    type: number
    sql: ${TABLE}."buyers_l8w" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."category" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension_group: enabled_since {
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
    sql: ${TABLE}."enabled_since" ;;
  }

  dimension_group: enabled_till {
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
    sql: ${TABLE}."enabled_till" ;;
  }

  dimension: exclusive_type {
    type: string
    sql: ${TABLE}."exclusive_type" ;;
  }

  dimension: freq_country_std_l8w {
    type: number
    sql: ${TABLE}."freq_country_std_l8w" ;;
  }

  dimension: freq_group_std_l8w {
    type: number
    sql: ${TABLE}."freq_group_std_l8w" ;;
  }

  dimension: gr_l8w {
    type: number
    sql: ${TABLE}."gr_l8w" ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: nr_l8w {
    type: number
    sql: ${TABLE}."nr_l8w" ;;
  }

  dimension: orders_l8w {
    type: number
    sql: ${TABLE}."orders_l8w" ;;
  }

  dimension: platforms {
    type: string
    sql: ${TABLE}."platforms" ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}."users" ;;
  }

  dimension: users_with_multiple_groups {
    type: number
    sql: ${TABLE}."users_with_multiple_groups" ;;
  }

  measure: count {
    type: count
    drill_fields: [ab_test_name]
  }
}
