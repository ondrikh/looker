view: pis_internal_metrics_backup {
  sql_table_name: "WORKSPACE_233686783"."PIS_internal_metrics_backup"
    ;;

  dimension: category_id {
    type: string
    sql: ${TABLE}."category_id" ;;
  }

  dimension: category_level {
    type: string
    sql: ${TABLE}."category_level" ;;
  }

  dimension: compet_num_promos_percentile {
    type: number
    sql: ${TABLE}."compet_num_promos_percentile" ;;
  }

  dimension: competitors {
    type: number
    sql: ${TABLE}."competitors" ;;
  }

  dimension: competitors_percentile {
    type: number
    sql: ${TABLE}."competitors_percentile" ;;
  }

  dimension: elast_month {
    type: string
    sql: ${TABLE}."elast_month" ;;
  }

  dimension: elast_percentile {
    type: number
    sql: ${TABLE}."elast_percentile" ;;
  }

  dimension: elasticity {
    type: string
    sql: ${TABLE}."elasticity" ;;
  }

  dimension: elasticity_source {
    type: string
    sql: ${TABLE}."elasticity_source" ;;
  }

  dimension: elasticity_stderr {
    type: string
    sql: ${TABLE}."elasticity_stderr" ;;
  }

  dimension: group_size {
    type: string
    sql: ${TABLE}."group_size" ;;
  }

  dimension: max_compet_price {
    type: string
    sql: ${TABLE}."max_compet_price" ;;
  }

  dimension: mean_net_revenue_daily {
    type: number
    sql: ${TABLE}."mean_net_revenue_daily" ;;
  }

  dimension: mean_net_revenue_fraction {
    type: number
    sql: ${TABLE}."mean_net_revenue_fraction" ;;
  }

  dimension: mean_orders {
    type: number
    sql: ${TABLE}."mean_orders" ;;
  }

  dimension: mean_orders_fraction {
    type: number
    sql: ${TABLE}."mean_orders_fraction" ;;
  }

  dimension: mean_sales_daily {
    type: number
    sql: ${TABLE}."mean_sales_daily" ;;
  }

  dimension: mean_sales_daily_fraction {
    type: number
    sql: ${TABLE}."mean_sales_daily_fraction" ;;
  }

  dimension: mean_virgin_orders {
    type: number
    sql: ${TABLE}."mean_virgin_orders" ;;
  }

  dimension: mean_virgin_orders_fraction {
    type: number
    sql: ${TABLE}."mean_virgin_orders_fraction" ;;
  }

  dimension: min_compet_price {
    type: string
    sql: ${TABLE}."min_compet_price" ;;
  }

  dimension: net_revenue_percentile {
    type: number
    sql: ${TABLE}."net_revenue_percentile" ;;
  }

  dimension: num_compet_promos {
    type: number
    sql: ${TABLE}."num_compet_promos" ;;
  }

  dimension: orders_percentile {
    type: number
    sql: ${TABLE}."orders_percentile" ;;
  }

  dimension: rep_rate_percentile {
    type: number
    sql: ${TABLE}."rep_rate_percentile" ;;
  }

  dimension: repurchase_rate_rdays {
    type: number
    sql: ${TABLE}."repurchase_rate_Rdays" ;;
  }

  dimension: sales_percentile {
    type: number
    sql: ${TABLE}."sales_percentile" ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}."score" ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}."snapshot_date" ;;
  }

  dimension: users_purchased {
    type: number
    sql: ${TABLE}."users_purchased" ;;
  }

  dimension: virgin_orders_percentile {
    type: number
    sql: ${TABLE}."virgin_orders_percentile" ;;
  }

  dimension: virgin_to_all_orders {
    type: number
    sql: ${TABLE}."virgin_to_all_orders" ;;
  }

  dimension: warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."warehouse_inventory_unique_id" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
