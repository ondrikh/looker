view: sm_check {
  sql_table_name: "WORKSPACE_233686783"."sm_check"
    ;;

  dimension: added_buffer {
    type: number
    sql: ${TABLE}."added_buffer" ;;
  }

  dimension: availability {
    type: number
    sql: ${TABLE}."availability" ;;
  }

  dimension: avg_sales_last_30_days {
    type: number
    sql: ${TABLE}."avg_sales_last_30_days" ;;
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

  dimension: generated_wanted_count {
    type: number
    sql: ${TABLE}."generated_wanted_count" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: stock {
    type: number
    sql: ${TABLE}."stock" ;;
  }

  dimension: stock_in_days {
    type: number
    sql: ${TABLE}."stock_in_days" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}."value" ;;
  }

  dimension: wanted_count {
    type: number
    sql: ${TABLE}."wanted_count" ;;
  }

  measure: count {
    type: count
    drill_fields: [l1_category_name, name]
  }
}
