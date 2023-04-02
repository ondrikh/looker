view: platform_loyalty_on_orders {
  sql_table_name: "WORKSPACE_233686783"."platform_loyalty_on_orders"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: deliver {
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
    sql: ${TABLE}."deliver_at" ;;
  }

  dimension_group: delivery_date_first_order {
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
    sql: ${TABLE}."delivery_date_first_order" ;;
  }

  dimension: has_premium {
    type: string
    sql: ${TABLE}."has_premium" ;;
  }

  dimension: is_newcommer {
    type: string
    sql: ${TABLE}."is_newcommer" ;;
  }

  dimension: master_order_unique_id {
    type: string
    sql: ${TABLE}."master_order_unique_id" ;;
  }

  dimension: nr {
    type: number
    sql: ${TABLE}."nr" ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}."origin" ;;
  }

  dimension: origin_first_order {
    type: string
    sql: ${TABLE}."origin_first_order" ;;
  }

  dimension: origin_unchanged {
    type: string
    sql: ${TABLE}."origin_unchanged" ;;
  }

  dimension: origin_version {
    type: string
    sql: ${TABLE}."origin_version" ;;
  }

  dimension: origin_version_first_order {
    type: string
    sql: ${TABLE}."origin_version_first_order" ;;
  }

  dimension: origin_version_unchanged {
    type: string
    sql: ${TABLE}."origin_version_unchanged" ;;
  }

  dimension: period_ranges {
    type: string
    sql: ${TABLE}."period_ranges" ;;
  }

  dimension: sku_count {
    type: number
    sql: ${TABLE}."sku_count" ;;
  }

  dimension: time_in_basket_minute {
    type: number
    sql: ${TABLE}."time_in_basket_minute" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
