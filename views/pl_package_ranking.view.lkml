view: pl_package_ranking {
  sql_table_name: "WORKSPACE_233686783"."pl_package_ranking"
    ;;

  dimension: basket_penetration {
    type: number
    sql: ${TABLE}."basket_penetration" ;;
  }

  dimension: basket_penetration_non_ps {
    type: number
    sql: ${TABLE}."basket_penetration_non_PS" ;;
  }

  dimension: basket_penetration_ps {
    type: number
    sql: ${TABLE}."basket_penetration_PS" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: buyer_penetration {
    type: number
    sql: ${TABLE}."buyer_penetration" ;;
  }

  dimension: buyer_penetration_non_ps {
    type: number
    sql: ${TABLE}."buyer_penetration_non_PS" ;;
  }

  dimension: buyer_penetration_ps {
    type: number
    sql: ${TABLE}."buyer_penetration_PS" ;;
  }

  dimension: buyers {
    type: number
    sql: ${TABLE}."buyers" ;;
  }

  dimension: buyers_non_ps {
    type: number
    sql: ${TABLE}."buyers_non_PS" ;;
  }

  dimension: buyers_ps {
    type: number
    sql: ${TABLE}."buyers_PS" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: data_from {
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
    sql: ${TABLE}."data_from" ;;
  }

  dimension_group: data_till {
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
    sql: ${TABLE}."data_till" ;;
  }

  dimension: fixed_buyers {
    type: number
    sql: ${TABLE}."fixed_buyers" ;;
  }

  dimension: fixed_buyers_non_ps {
    type: number
    sql: ${TABLE}."fixed_buyers_non_PS" ;;
  }

  dimension: fixed_buyers_ps {
    type: number
    sql: ${TABLE}."fixed_buyers_PS" ;;
  }

  dimension: fixed_orders {
    type: number
    sql: ${TABLE}."fixed_orders" ;;
  }

  dimension: fixed_orders_non_ps {
    type: number
    sql: ${TABLE}."fixed_orders_non_PS" ;;
  }

  dimension: fixed_orders_ps {
    type: number
    sql: ${TABLE}."fixed_orders_PS" ;;
  }

  dimension: l1_category_name_en {
    type: string
    sql: ${TABLE}."L1_category_name_en" ;;
  }

  dimension: l2_category_name_en {
    type: string
    sql: ${TABLE}."L2_category_name_en" ;;
  }

  dimension: l2_category_unique_id {
    type: string
    sql: ${TABLE}."L2_category_unique_id" ;;
  }

  dimension: l3_category_name_en {
    type: string
    sql: ${TABLE}."L3_category_name_en" ;;
  }

  dimension: l3_category_unique_id {
    type: string
    sql: ${TABLE}."L3_category_unique_id" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}."orders" ;;
  }

  dimension: orders_non_ps {
    type: number
    sql: ${TABLE}."orders_non_PS" ;;
  }

  dimension: orders_ps {
    type: number
    sql: ${TABLE}."orders_PS" ;;
  }

  dimension: packages {
    type: number
    sql: ${TABLE}."packages" ;;
  }

  dimension: packages_non_ps {
    type: number
    sql: ${TABLE}."packages_non_PS" ;;
  }

  dimension: packages_ps {
    type: number
    sql: ${TABLE}."packages_PS" ;;
  }

  dimension: rank_basket_penetration {
    type: number
    sql: ${TABLE}."rank_basket_penetration" ;;
  }

  dimension: rank_basket_penetration_non_ps {
    type: number
    sql: ${TABLE}."rank_basket_penetration_non_PS" ;;
  }

  dimension: rank_basket_penetration_ps {
    type: number
    sql: ${TABLE}."rank_basket_penetration_PS" ;;
  }

  dimension: rank_buyer_penetration {
    type: number
    sql: ${TABLE}."rank_buyer_penetration" ;;
  }

  dimension: rank_buyer_penetration_non_ps {
    type: number
    sql: ${TABLE}."rank_buyer_penetration_non_PS" ;;
  }

  dimension: rank_buyer_penetration_ps {
    type: number
    sql: ${TABLE}."rank_buyer_penetration_PS" ;;
  }

  dimension: rank_packages {
    type: number
    sql: ${TABLE}."rank_packages" ;;
  }

  dimension: rank_packages_non_ps {
    type: number
    sql: ${TABLE}."rank_packages_non_PS" ;;
  }

  dimension: rank_packages_ps {
    type: number
    sql: ${TABLE}."rank_packages_PS" ;;
  }

  dimension: unique_product_id {
    type: string
    sql: ${TABLE}."unique_product_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
