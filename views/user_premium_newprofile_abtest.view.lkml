view: user_premium_newprofile_abtest {
  sql_table_name: "WORKSPACE_233686783"."user_premium_newprofile_abtest"
    ;;

  dimension: aov_90d {
    type: number
    sql: ${TABLE}."aov_90d" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension: days_since_last_order {
    type: number
    sql: ${TABLE}."days_since_last_order" ;;
  }

  dimension: gr_90d {
    type: number
    sql: ${TABLE}."gr_90d" ;;
  }

  dimension: new_premium_paid {
    type: string
    sql: ${TABLE}."new_premium_paid" ;;
  }

  dimension: orders_90d {
    type: number
    sql: ${TABLE}."orders_90d" ;;
  }

  dimension: orders_total {
    type: number
    sql: ${TABLE}."orders_total" ;;
  }

  dimension: premium_type {
    type: string
    sql: ${TABLE}."premium_type" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension_group: valid_since {
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
    sql: ${TABLE}."valid_since" ;;
  }

  dimension_group: valid_till {
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
    sql: ${TABLE}."valid_till" ;;
  }

  dimension: variant {
    type: string
    sql: ${TABLE}."variant" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
