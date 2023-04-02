view: staging63ceb1c89d319 {
  sql_table_name: "WORKSPACE_233686783"."staging63ceb1c89d319"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: bonus {
    type: number
    sql: ${TABLE}."bonus" ;;
  }

  dimension: bonus_eur {
    type: number
    sql: ${TABLE}."bonus_eur" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: delisting_candidate {
    type: number
    sql: ${TABLE}."delisting_candidate" ;;
  }

  dimension_group: deliver {
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
    sql: ${TABLE}."deliver_at" ;;
  }

  dimension: finished_order {
    type: number
    sql: ${TABLE}."finished_order" ;;
  }

  dimension: gross_revenue {
    type: number
    sql: ${TABLE}."gross_revenue" ;;
  }

  dimension: gross_revenue_eur {
    type: number
    sql: ${TABLE}."gross_revenue_eur" ;;
  }

  dimension: is_private_label {
    type: number
    sql: ${TABLE}."is_private_label" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: l1_category_name_en {
    type: string
    sql: ${TABLE}."L1_category_name_en" ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}."L2_category_name" ;;
  }

  dimension: l2_category_name_en {
    type: string
    sql: ${TABLE}."L2_category_name_en" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."L3_category_name" ;;
  }

  dimension: l3_category_name_en {
    type: string
    sql: ${TABLE}."L3_category_name_en" ;;
  }

  dimension: main_funnel {
    type: string
    sql: ${TABLE}."main_funnel" ;;
  }

  dimension: master_order_unique_id {
    type: string
    sql: ${TABLE}."master_order_unique_id" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: net_cashback {
    type: number
    sql: ${TABLE}."net_cashback" ;;
  }

  dimension: net_cashback_eur {
    type: number
    sql: ${TABLE}."net_cashback_eur" ;;
  }

  dimension: net_cogs {
    type: number
    sql: ${TABLE}."net_cogs" ;;
  }

  dimension: net_cogs_eur {
    type: number
    sql: ${TABLE}."net_cogs_eur" ;;
  }

  dimension: net_cogs_with_bonus {
    type: number
    sql: ${TABLE}."net_cogs_with_bonus" ;;
  }

  dimension: net_cogs_with_bonus_eur {
    type: number
    sql: ${TABLE}."net_cogs_with_bonus_eur" ;;
  }

  dimension: net_revenue {
    type: number
    sql: ${TABLE}."net_revenue" ;;
  }

  dimension: net_revenue_eur {
    type: number
    sql: ${TABLE}."net_revenue_eur" ;;
  }

  dimension: packages {
    type: number
    sql: ${TABLE}."packages" ;;
  }

  dimension: profit_margin {
    type: number
    sql: ${TABLE}."profit_margin" ;;
  }

  dimension: profit_margin_eur {
    type: number
    sql: ${TABLE}."profit_margin_eur" ;;
  }

  dimension: profit_margin_with_bonus {
    type: number
    sql: ${TABLE}."profit_margin_with_bonus" ;;
  }

  dimension: profit_margin_with_bonus_eur {
    type: number
    sql: ${TABLE}."profit_margin_with_bonus_eur" ;;
  }

  dimension: shipping {
    type: number
    sql: ${TABLE}."shipping" ;;
  }

  dimension: shipping_eur {
    type: number
    sql: ${TABLE}."shipping_eur" ;;
  }

  dimension: suborder_unique_id {
    type: string
    sql: ${TABLE}."suborder_unique_id" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: tips {
    type: number
    sql: ${TABLE}."tips" ;;
  }

  dimension: tips_eur {
    type: number
    sql: ${TABLE}."tips_eur" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
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
      id,
      name,
      warehouse_name,
      l3_category_name,
      l1_category_name,
      supplier_name,
      l2_category_name
    ]
  }
}
