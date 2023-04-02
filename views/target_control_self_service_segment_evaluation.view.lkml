view: target_control_self_service_segment_evaluation {
  sql_table_name: "WORKSPACE_233686783"."target_control_self_service_segment_evaluation"
    ;;

  dimension: aov {
    type: string
    sql: ${TABLE}."aov" ;;
  }

  dimension: aov90 {
    type: string
    sql: ${TABLE}."aov90" ;;
  }

  dimension: arpu_level {
    type: string
    sql: ${TABLE}."arpu_level" ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}."campaign_name" ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."date" ;;
  }

  dimension: dsfo {
    type: string
    sql: ${TABLE}."dsfo" ;;
  }

  dimension: dslo {
    type: string
    sql: ${TABLE}."dslo" ;;
  }

  dimension: fo_date {
    type: string
    sql: ${TABLE}."fo_date" ;;
  }

  dimension: frequency {
    type: string
    sql: ${TABLE}."frequency" ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: main_funnel {
    type: string
    sql: ${TABLE}."main_funnel" ;;
  }

  dimension: orders {
    type: string
    sql: ${TABLE}."orders" ;;
  }

  dimension: orders_60days {
    type: string
    sql: ${TABLE}."orders_60days" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."start_time" ;;
  }

  dimension: total_gr {
    type: string
    sql: ${TABLE}."total_gr" ;;
  }

  dimension: total_orders {
    type: string
    sql: ${TABLE}."total_orders" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
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
    drill_fields: [campaign_name, user.id]
  }
}
