view: assortment_reporting {
  sql_table_name: "WORKSPACE_233686783"."assortment_reporting"
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: cogs_with_bonus {
    type: number
    sql: ${TABLE}."COGS_with_Bonus" ;;
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
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."date" ;;
  }

  dimension: deleted {
    type: string
    sql: ${TABLE}."deleted" ;;
  }

  dimension: enabled {
    type: string
    sql: ${TABLE}."enabled" ;;
  }

  dimension: gold_distribution {
    type: number
    sql: ${TABLE}."gold_distribution" ;;
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

  dimension: net_cogs {
    type: number
    sql: ${TABLE}."net_COGS" ;;
  }

  dimension: nr {
    type: number
    sql: ${TABLE}."NR" ;;
  }

  dimension: packages {
    type: number
    sql: ${TABLE}."Packages" ;;
  }

  dimension: primary_supplier_name {
    type: string
    sql: ${TABLE}."primary_supplier_name" ;;
  }

  dimension: product_level {
    type: string
    sql: ${TABLE}."product_level" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: profit {
    type: number
    sql: ${TABLE}."profit" ;;
  }

  dimension: responsible_user {
    type: string
    sql: ${TABLE}."responsible_user" ;;
  }

  dimension: responsible_user_senior {
    type: string
    sql: ${TABLE}."responsible_user_senior" ;;
  }

  dimension: sth {
    type: number
    sql: ${TABLE}."sth" ;;
  }

  measure: count {
    type: count
    drill_fields: [l1_category_name, l2_category_name, product_name, l3_category_name, primary_supplier_name]
  }
}
