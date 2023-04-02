view: ftu_buyer_types {
  sql_table_name: "WORKSPACE_233686783"."ftu_buyer_types"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}."create_date" ;;
  }

  dimension: days_create_to_first_order {
    type: number
    sql: ${TABLE}."days_create_to_first_order" ;;
  }

  dimension: days_webvisit_to_create {
    type: number
    sql: ${TABLE}."days_webvisit_to_create" ;;
  }

  dimension: dslo {
    type: number
    sql: ${TABLE}."dslo" ;;
  }

  dimension: first_order_origin {
    type: string
    sql: ${TABLE}."first_order_origin" ;;
  }

  dimension_group: first_order {
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
    sql: ${TABLE}."first_order_time" ;;
  }

  dimension: full_visitor_id {
    type: string
    sql: ${TABLE}."fullVisitorId" ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}."orders_count" ;;
  }

  dimension: orders_total_bq {
    type: number
    sql: ${TABLE}."orders_total_bq" ;;
  }

  dimension: purchasing_behaviour_code {
    type: number
    sql: ${TABLE}."purchasing_behaviour_code" ;;
  }

  dimension: purchasing_behaviour_dyn {
    type: number
    sql: ${TABLE}."purchasing_behaviour_dyn" ;;
  }

  dimension: purchasing_behaviour_type {
    type: string
    sql: ${TABLE}."purchasing_behaviour_type" ;;
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

  dimension: visit_number {
    type: number
    sql: ${TABLE}."visit_number" ;;
  }

  dimension_group: web_visit_date {
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
    sql: ${TABLE}."web_visit_date" ;;
  }

  dimension_group: web_visit_time {
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
    sql: ${TABLE}."web_visit_time" ;;
  }

  measure: count {
    type: count
    drill_fields: [user.id]
  }
}
