view: customer_segment_in_weeks_alias {
  sql_table_name: "WORKSPACE_233686783"."customer_segment_in_weeks_alias"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: date_churned {
    type: string
    sql: ${TABLE}."date_churned" ;;
  }

  dimension: date_reactivated {
    type: string
    sql: ${TABLE}."date_reactivated" ;;
  }

  dimension: finished_onboarding {
    type: string
    sql: ${TABLE}."finished_onboarding" ;;
  }

  dimension_group: fo {
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
    sql: ${TABLE}."fo_date" ;;
  }

  dimension: gr_90days {
    type: number
    sql: ${TABLE}."gr_90days" ;;
  }

  dimension: gr_churned {
    type: number
    sql: ${TABLE}."gr_churned" ;;
  }

  dimension: total_orders {
    type: number
    sql: ${TABLE}."total_orders" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: unique_id_active {
    type: string
    sql: ${TABLE}."unique_id_active" ;;
  }

  dimension: unique_id_churned {
    type: string
    sql: ${TABLE}."unique_id_churned" ;;
  }

  dimension: unique_id_new {
    type: string
    sql: ${TABLE}."unique_id_new" ;;
  }

  dimension: unique_id_reactivated {
    type: string
    sql: ${TABLE}."unique_id_reactivated" ;;
  }

  dimension_group: week_end {
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
    sql: ${TABLE}."week_end" ;;
  }

  dimension: week_of_year {
    type: string
    sql: ${TABLE}."week_of_year" ;;
  }

  dimension_group: week_start {
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
    sql: ${TABLE}."week_start" ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}."year" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
