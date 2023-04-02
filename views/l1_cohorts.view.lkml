view: l1_cohorts {
  sql_table_name: "WORKSPACE_233686783"."l1_cohorts"
    ;;

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

  dimension_group: first_del_l1 {
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
    sql: ${TABLE}."first_del_L1" ;;
  }

  dimension: ftu_cat {
    type: number
    sql: ${TABLE}."ftu_cat" ;;
  }

  dimension: has_premium {
    type: string
    sql: ${TABLE}."has_premium" ;;
  }

  dimension: l1_category_id {
    type: string
    sql: ${TABLE}."L1_category_id" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: l1_category_name_en {
    type: string
    sql: ${TABLE}."L1_category_name_en" ;;
  }

  dimension: months_since_first_del {
    type: number
    sql: ${TABLE}."months_since_first_del" ;;
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
    drill_fields: [l1_category_name]
  }
}
