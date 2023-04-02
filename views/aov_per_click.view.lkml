view: aov_per_click {
  sql_table_name: "WORKSPACE_233686783"."aov_per_click"
    ;;

  dimension: bulk_additions {
    type: number
    sql: ${TABLE}."bulk_additions" ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}."clicks" ;;
  }

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

  dimension: gr_per_click_eur {
    type: number
    sql: ${TABLE}."GR_per_click_EUR" ;;
  }

  dimension: gr_per_click_local_currency {
    type: number
    sql: ${TABLE}."GR_per_click_local_currency" ;;
  }

  dimension: nr_per_click_eur {
    type: number
    sql: ${TABLE}."NR_per_click_EUR" ;;
  }

  dimension: nr_per_click_local_currency {
    type: number
    sql: ${TABLE}."NR_per_click_local_currency" ;;
  }

  dimension: order_gr_eur {
    type: number
    sql: ${TABLE}."order_GR_EUR" ;;
  }

  dimension: order_gr_local_currency {
    type: number
    sql: ${TABLE}."order_GR_local_currency" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."order_id" ;;
  }

  dimension: order_nr_eur {
    type: number
    sql: ${TABLE}."order_NR_EUR" ;;
  }

  dimension: order_nr_local_currency {
    type: number
    sql: ${TABLE}."order_NR_local_currency" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}."origin" ;;
  }

  dimension: origin_group {
    type: string
    sql: ${TABLE}."origin_group" ;;
  }

  dimension: sku_count {
    type: number
    sql: ${TABLE}."SKU_count" ;;
  }

  dimension: skus_added_in_bulk {
    type: number
    sql: ${TABLE}."SKUs_added_in_bulk" ;;
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

  dimension: user_views {
    type: number
    sql: ${TABLE}."user_views" ;;
  }

  measure: count {
    type: count
    drill_fields: [order.courier_name, order.warehouse_name, order.delivery_point_name, order.id, user.id]
  }
}
