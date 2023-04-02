view: eligible_customers_detail {
  sql_table_name: "WORKSPACE_233686783"."eligible_customers_detail"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date_current_q {
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
    sql: ${TABLE}."date_current_q" ;;
  }

  dimension_group: date_last_month {
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
    sql: ${TABLE}."date_last_month" ;;
  }

  dimension_group: date_last_week {
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
    sql: ${TABLE}."date_last_week" ;;
  }

  dimension_group: date_previous_q {
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
    sql: ${TABLE}."date_previous_q" ;;
  }

  dimension: days_since_first_order {
    type: string
    sql: ${TABLE}."days_since_first_order" ;;
  }

  dimension: days_since_last_order {
    type: string
    sql: ${TABLE}."days_since_last_order" ;;
  }

  dimension: eligible_current_q {
    type: string
    sql: ${TABLE}."eligible_current_q" ;;
  }

  dimension: eligible_last_month {
    type: string
    sql: ${TABLE}."eligible_last_month" ;;
  }

  dimension: eligible_last_week {
    type: string
    sql: ${TABLE}."eligible_last_week" ;;
  }

  dimension: eligible_previous_q {
    type: string
    sql: ${TABLE}."eligible_previous_q" ;;
  }

  dimension: eligible_user {
    type: string
    sql: ${TABLE}."eligible_user" ;;
  }

  dimension: gr_eur_90d {
    type: number
    sql: ${TABLE}."gr_eur_90d" ;;
  }

  dimension: gr_eur_90d_current_q {
    type: number
    sql: ${TABLE}."gr_eur_90d_current_q" ;;
  }

  dimension: gr_eur_90d_last_month {
    type: number
    sql: ${TABLE}."gr_eur_90d_last_month" ;;
  }

  dimension: gr_eur_90d_last_week {
    type: number
    sql: ${TABLE}."gr_eur_90d_last_week" ;;
  }

  dimension: gr_eur_90d_previous_q {
    type: number
    sql: ${TABLE}."gr_eur_90d_previous_q" ;;
  }

  dimension: main_funnel {
    type: string
    sql: ${TABLE}."main_funnel" ;;
  }

  dimension: orders {
    type: string
    sql: ${TABLE}."orders" ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}."snapshot_date" ;;
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
    drill_fields: [user.id]
  }
}
