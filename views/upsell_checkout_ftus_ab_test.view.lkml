view: upsell_checkout_ftus_ab_test {
  sql_table_name: "WORKSPACE_233686783"."upsell_checkout_ftus_ab_test"
    ;;

  dimension: aov_upsell_checkout_ftus {
    type: number
    sql: ${TABLE}."aov_upsell_checkout_ftus" ;;
  }

  dimension: avg_l2_upsell_checkout_ftus {
    type: number
    sql: ${TABLE}."avg_L2_upsell_checkout_ftus" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}."customer_type" ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}."group_name" ;;
  }

  dimension: nr_sum_upsell_checkout_ftus {
    type: number
    sql: ${TABLE}."nr_sum_upsell_checkout_ftus" ;;
  }

  dimension: number_of_customers_all_sources {
    type: number
    sql: ${TABLE}."number_of_customers_all_sources" ;;
  }

  dimension: number_of_orders_all_sources {
    type: number
    sql: ${TABLE}."number_of_orders_all_sources" ;;
  }

  dimension: number_of_orders_upsell_checkout_ftus {
    type: number
    sql: ${TABLE}."number_of_orders_upsell_checkout_ftus" ;;
  }

  dimension_group: order {
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
    sql: ${TABLE}."order_date" ;;
  }

  dimension: order_share_upper_checkout {
    type: number
    sql: ${TABLE}."order_share_upper_checkout" ;;
  }

  dimension: revenue_share_upper_checkout {
    type: number
    sql: ${TABLE}."revenue_share_upper_checkout" ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name]
  }
}
