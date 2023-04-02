view: adhoc_boris {
  sql_table_name: "WORKSPACE_233686783"."adhoc_boris"
    ;;

  dimension: avg_daily_net_cogs {
    type: number
    sql: ${TABLE}."avg_daily_net_COGS" ;;
  }

  dimension: avg_daily_nr {
    type: number
    sql: ${TABLE}."avg_daily_NR" ;;
  }

  dimension: avg_daily_packages {
    type: number
    sql: ${TABLE}."avg_daily_packages" ;;
  }

  dimension: buyers_in_last_30_days_per_id_warehouse_inventory {
    type: number
    value_format_name: id
    sql: ${TABLE}."buyers_in_last_30_days_per_id_warehouse_inventory" ;;
  }

  dimension: competitor_1 {
    type: string
    sql: ${TABLE}."competitor_1" ;;
  }

  dimension: competitor_2 {
    type: string
    sql: ${TABLE}."competitor_2" ;;
  }

  dimension: competitor_3 {
    type: string
    sql: ${TABLE}."competitor_3" ;;
  }

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

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}."L2_category_name" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."L3_category_name" ;;
  }

  dimension: net_cogs_last_30 {
    type: number
    sql: ${TABLE}."net_COGS_last_30" ;;
  }

  dimension: nr_last_30 {
    type: number
    sql: ${TABLE}."NR_last_30" ;;
  }

  dimension: packages_last_30 {
    type: number
    sql: ${TABLE}."packages_last_30" ;;
  }

  dimension: pricing_group {
    type: string
    sql: ${TABLE}."pricing_group" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: transactions_sum_net_cogs_with_bonus_last_30 {
    type: number
    sql: ${TABLE}."transactions_sum_net_COGS_with_bonus_last_30" ;;
  }

  measure: count {
    type: count
    drill_fields: [l3_category_name, l1_category_name, l2_category_name]
  }
}
