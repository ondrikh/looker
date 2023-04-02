view: abtest_metrics {
  sql_table_name: "WORKSPACE_233686783"."abtest_metrics"
    ;;

  dimension: adds_to_cart_touchpoint {
    type: number
    sql: ${TABLE}."adds_to_cart_touchpoint" ;;
  }

  dimension: adds_to_cart_touchpoint_14d_previous {
    type: number
    sql: ${TABLE}."adds_to_cart_touchpoint_14d_previous" ;;
  }

  dimension: aov_touchpoint {
    type: number
    sql: ${TABLE}."aov_touchpoint" ;;
  }

  dimension: aov_touchpoint_14d_previous {
    type: number
    sql: ${TABLE}."aov_touchpoint_14d_previous" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date_follow {
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
    sql: ${TABLE}."date_follow" ;;
  }

  dimension_group: date_from {
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
    sql: ${TABLE}."date_from" ;;
  }

  dimension_group: date_to {
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
    sql: ${TABLE}."date_to" ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}."group_name" ;;
  }

  dimension: group_note {
    type: string
    sql: ${TABLE}."group_note" ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}."note" ;;
  }

  dimension: orders_touchpoint {
    type: number
    sql: ${TABLE}."orders_touchpoint" ;;
  }

  dimension: orders_touchpoint_14d_previous {
    type: number
    sql: ${TABLE}."orders_touchpoint_14d_previous" ;;
  }

  dimension: revenue_touchpoint {
    type: number
    sql: ${TABLE}."revenue_touchpoint" ;;
  }

  dimension: revenue_touchpoint_14d_previous {
    type: number
    sql: ${TABLE}."revenue_touchpoint_14d_previous" ;;
  }

  dimension: revenue_touchpoint_share {
    type: number
    sql: ${TABLE}."revenue_touchpoint_share" ;;
  }

  dimension: source_api_type {
    type: string
    sql: ${TABLE}."source_api_type" ;;
  }

  dimension: test_id {
    type: string
    sql: ${TABLE}."test_id" ;;
  }

  dimension: test_name {
    type: string
    sql: ${TABLE}."test_name" ;;
  }

  dimension: total_aov {
    type: number
    sql: ${TABLE}."total_aov" ;;
  }

  dimension: total_aov_14d_previous {
    type: number
    sql: ${TABLE}."total_aov_14d_previous" ;;
  }

  dimension: total_aov_touchpoint {
    type: number
    sql: ${TABLE}."total_aov_touchpoint" ;;
  }

  dimension: total_gross_revenue {
    type: number
    sql: ${TABLE}."total_gross_revenue" ;;
  }

  dimension: total_gross_revenue_14d_previous {
    type: number
    sql: ${TABLE}."total_gross_revenue_14d_previous" ;;
  }

  dimension: total_net_revenue {
    type: number
    sql: ${TABLE}."total_net_revenue" ;;
  }

  dimension: total_net_revenue_14d_previous {
    type: number
    sql: ${TABLE}."total_net_revenue_14d_previous" ;;
  }

  dimension: total_orders {
    type: number
    sql: ${TABLE}."total_orders" ;;
  }

  dimension: total_orders_14d_previous {
    type: number
    sql: ${TABLE}."total_orders_14d_previous" ;;
  }

  dimension: total_users {
    type: number
    sql: ${TABLE}."total_users" ;;
  }

  dimension: touchpoint {
    type: string
    sql: ${TABLE}."touchpoint" ;;
  }

  dimension: users_touchpoint {
    type: number
    sql: ${TABLE}."users_touchpoint" ;;
  }

  dimension: users_touchpoint_14d_previous {
    type: number
    sql: ${TABLE}."users_touchpoint_14d_previous" ;;
  }

  dimension: weight {
    type: string
    sql: ${TABLE}."weight" ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name, test_name]
  }
}
