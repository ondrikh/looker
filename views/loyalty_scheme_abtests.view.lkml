view: loyalty_scheme_abtests {
  sql_table_name: "WORKSPACE_233686783"."loyalty_scheme_abtests"
    ;;

  dimension_group: abtest_date_end {
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
    sql: ${TABLE}."abtest_date_end" ;;
  }

  dimension_group: abtest_date_start {
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
    sql: ${TABLE}."abtest_date_start" ;;
  }

  dimension_group: abtest_followup_end {
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
    sql: ${TABLE}."abtest_followup_end" ;;
  }

  dimension: abtest_id {
    type: string
    sql: ${TABLE}."abtest_id" ;;
  }

  dimension: abtest_name {
    type: string
    sql: ${TABLE}."abtest_name" ;;
  }

  dimension: abtest_unique_id {
    type: string
    sql: ${TABLE}."abtest_unique_id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: days_since_last_order {
    type: number
    sql: ${TABLE}."days_since_last_order" ;;
  }

  dimension: gr_30d {
    type: number
    sql: ${TABLE}."gr_30d" ;;
  }

  dimension: gr_60d {
    type: number
    sql: ${TABLE}."gr_60d" ;;
  }

  dimension: gr_90d {
    type: number
    sql: ${TABLE}."gr_90d" ;;
  }

  dimension: orders_30d {
    type: number
    sql: ${TABLE}."orders_30d" ;;
  }

  dimension: orders_60d {
    type: number
    sql: ${TABLE}."orders_60d" ;;
  }

  dimension: orders_90d {
    type: number
    sql: ${TABLE}."orders_90d" ;;
  }

  dimension: total_orders {
    type: number
    sql: ${TABLE}."total_orders" ;;
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

  dimension: variant {
    type: string
    sql: ${TABLE}."variant" ;;
  }

  measure: count {
    type: count
    drill_fields: [abtest_name, user.id]
  }
}
