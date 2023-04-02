view: pilot_assortment {
  sql_table_name: "WORKSPACE_233686783"."pilot_assortment"
    ;;

  dimension: assortment_tier {
    type: string
    sql: ${TABLE}."assortment_tier" ;;
  }

  dimension: avg_daily_nr {
    type: number
    sql: ${TABLE}."avg_daily_NR" ;;
  }

  dimension: basket_penetration_in_last_30_days {
    type: number
    sql: ${TABLE}."basket_penetration_in_last_30_days" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: customer_penetration_in_last_30_days {
    type: number
    sql: ${TABLE}."customer_penetration_in_last_30_days" ;;
  }

  dimension: is_nielsen_regular_kvi {
    type: number
    sql: ${TABLE}."is_nielsen_regular_kvi" ;;
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

  dimension: margin_with_bonus_last_30 {
    type: number
    sql: ${TABLE}."margin_with_bonus_last_30" ;;
  }

  dimension: mean_net_revenue_fraction {
    type: number
    sql: ${TABLE}."mean_net_revenue_fraction" ;;
  }

  dimension: mean_orders_fraction {
    type: number
    sql: ${TABLE}."mean_orders_fraction" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: nielsen_department {
    type: string
    sql: ${TABLE}."nielsen_department" ;;
  }

  dimension_group: nielsen_report {
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
    sql: ${TABLE}."nielsen_report_date" ;;
  }

  dimension: nr_l30_d {
    type: number
    sql: ${TABLE}."NR_L30D" ;;
  }

  dimension: nr_l7_d {
    type: number
    sql: ${TABLE}."NR_L7D" ;;
  }

  dimension: orders_percentile {
    type: number
    sql: ${TABLE}."orders_percentile" ;;
  }

  dimension: packages_l30_d {
    type: number
    sql: ${TABLE}."packages_L30D" ;;
  }

  dimension: packages_l7_d {
    type: number
    sql: ${TABLE}."packages_L7D" ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."product_id" ;;
  }

  dimension_group: report_date {
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
    sql: ${TABLE}."report_date" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_inventory_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."warehouse_inventory_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      name,
      warehouse_name,
      l2_category_name,
      l3_category_name,
      l1_category_name,
      warehouse_inventory.warehouse_name,
      warehouse_inventory.id,
      warehouse_inventory.country_of_origin_name,
      warehouse_inventory.primary_supplier_name,
      product.name,
      product.l2_category_name,
      product.product_family_name,
      product.l4_category_name,
      product.id,
      product.l5_category_name,
      product.l1_category_name,
      product.l3_category_name
    ]
  }
}
