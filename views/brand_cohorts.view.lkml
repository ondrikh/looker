view: brand_cohorts {
  sql_table_name: "WORKSPACE_233686783"."brand_cohorts"
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: brand_id {
    type: string
    sql: ${TABLE}."brand_id" ;;
  }

  dimension: country_user {
    type: string
    sql: ${TABLE}."country_user" ;;
  }

  dimension_group: deliver_at_month {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."deliver_at_month" ;;
  }

  dimension_group: first_del_brand {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."first_del_brand" ;;
  }

  dimension: ftu_brand {
    type: number
    sql: ${TABLE}."ftu_brand" ;;
  }

  dimension: has_premium {
    type: string
    sql: ${TABLE}."has_premium" ;;
  }

  dimension: months_since_first_del_brand {
    type: number
    sql: ${TABLE}."months_since_first_del_brand" ;;
  }

  dimension: order_country {
    type: string
    sql: ${TABLE}."order_country" ;;
  }

  dimension_group: user_first_order {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."user_first_order" ;;
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
