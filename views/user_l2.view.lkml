view: user_l2 {
  sql_table_name: "WORKSPACE_233686783"."user_l2"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: customer_l2_count {
    type: number
    sql: ${TABLE}."customer_l2_count" ;;
  }

  dimension: customer_l2_count_baby_club {
    type: number
    sql: ${TABLE}."customer_l2_count_baby_club" ;;
  }

  dimension: customer_l2_count_non_baby_club {
    type: number
    sql: ${TABLE}."customer_l2_count_non_baby_club" ;;
  }

  dimension: customer_l2_count_non_premium {
    type: number
    sql: ${TABLE}."customer_l2_count_non_premium" ;;
  }

  dimension: customer_l2_count_non_senior_club {
    type: number
    sql: ${TABLE}."customer_l2_count_non_senior_club" ;;
  }

  dimension: customer_l2_count_premium {
    type: number
    sql: ${TABLE}."customer_l2_count_premium" ;;
  }

  dimension: customer_l2_count_premium_free {
    type: number
    sql: ${TABLE}."customer_l2_count_premium_free" ;;
  }

  dimension: customer_l2_count_premium_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}."customer_l2_count_premium_paid" ;;
  }

  dimension: customer_l2_count_senior_club {
    type: number
    sql: ${TABLE}."customer_l2_count_senior_club" ;;
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

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: view_type {
    type: string
    sql: ${TABLE}."view_type" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
