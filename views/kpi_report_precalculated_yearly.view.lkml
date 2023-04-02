view: kpi_report_precalculated_yearly {
  sql_table_name: "WORKSPACE_233686783"."kpi_report_precalculated_yearly"
    ;;

  dimension: buyers_fixed_year {
    type: number
    sql: ${TABLE}."buyers_fixed_year" ;;
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

  dimension: gross_revenue_fixed_year {
    type: number
    sql: ${TABLE}."gross_revenue_fixed_year" ;;
  }

  dimension: l1_buyers_year {
    type: number
    sql: ${TABLE}."L1_buyers_year" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: l1_gross_revenue_year {
    type: number
    sql: ${TABLE}."L1_gross_revenue_year" ;;
  }

  dimension: l1_orders_year {
    type: number
    sql: ${TABLE}."L1_orders_year" ;;
  }

  dimension: l2_buyers_year {
    type: number
    sql: ${TABLE}."L2_buyers_year" ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}."L2_category_name" ;;
  }

  dimension: l2_gross_revenue_year {
    type: number
    sql: ${TABLE}."L2_gross_revenue_year" ;;
  }

  dimension: l2_orders_year {
    type: number
    sql: ${TABLE}."L2_orders_year" ;;
  }

  dimension: l3_buyers_year {
    type: number
    sql: ${TABLE}."L3_buyers_year" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."L3_category_name" ;;
  }

  dimension: l3_gross_revenue_year {
    type: number
    sql: ${TABLE}."L3_gross_revenue_year" ;;
  }

  dimension: l3_orders_year {
    type: number
    sql: ${TABLE}."L3_orders_year" ;;
  }

  dimension: orders_fixed_year {
    type: number
    sql: ${TABLE}."orders_fixed_year" ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}."year" ;;
  }

  measure: count {
    type: count
    drill_fields: [l2_category_name, l1_category_name, l3_category_name]
  }
}
