view: app_homepage_test_reporting {
  sql_table_name: "WORKSPACE_233686783"."app_homepage_test_reporting"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
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

  dimension: feature_name {
    type: string
    sql: ${TABLE}."feature_name" ;;
  }

  dimension: feature_name_id {
    type: string
    sql: ${TABLE}."feature_name_id" ;;
  }

  dimension: feature_name_unique_id {
    type: string
    sql: ${TABLE}."feature_name_unique_id" ;;
  }

  dimension: feature_variant {
    type: string
    sql: ${TABLE}."feature_variant" ;;
  }

  dimension: feature_variant_id {
    type: string
    sql: ${TABLE}."feature_variant_id" ;;
  }

  dimension: feature_variant_unique_id {
    type: string
    sql: ${TABLE}."feature_variant_unique_id" ;;
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

  dimension: gr {
    type: number
    sql: ${TABLE}."GR" ;;
  }

  dimension: is_first_order {
    type: number
    sql: ${TABLE}."is_first_order" ;;
  }

  dimension: is_ftu_that_day {
    type: number
    sql: ${TABLE}."is_ftu_that_day" ;;
  }

  dimension: is_suborder {
    type: number
    sql: ${TABLE}."is_suborder" ;;
  }

  dimension: nr {
    type: number
    sql: ${TABLE}."NR" ;;
  }

  dimension: operating_system {
    type: string
    sql: ${TABLE}."operating_system" ;;
  }

  dimension: order_count_today {
    type: number
    sql: ${TABLE}."order_count_today" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."order_id" ;;
  }

  dimension: order_sequence {
    type: number
    sql: ${TABLE}."order_sequence" ;;
  }

  dimension_group: order_time {
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
    sql: ${TABLE}."order_time" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension: sku_count_sold {
    type: number
    sql: ${TABLE}."sku_count_sold" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}."user_pseudo_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}."version" ;;
  }

  dimension: visit_id {
    type: string
    sql: ${TABLE}."visit_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      feature_name,
      user.id,
      order.courier_name,
      order.warehouse_name,
      order.delivery_point_name,
      order.id
    ]
  }
}
