view: kpi_report_precalculated_monthly {
  sql_table_name: "WORKSPACE_233686783"."kpi_report_precalculated_monthly"
    ;;

  dimension: buyers_fixed_monthly {
    type: number
    sql: ${TABLE}."buyers_fixed_monthly" ;;
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

  dimension: gross_revenue_fixed_monthly {
    type: number
    sql: ${TABLE}."gross_revenue_fixed_monthly" ;;
  }

  dimension: l1_buyers_monthly {
    type: number
    sql: ${TABLE}."L1_buyers_monthly" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: l1_gross_revenue_monthly {
    type: number
    sql: ${TABLE}."L1_gross_revenue_monthly" ;;
  }

  dimension: l1_orders_monthly {
    type: number
    sql: ${TABLE}."L1_orders_monthly" ;;
  }

  dimension: l2_buyers_monthly {
    type: number
    sql: ${TABLE}."L2_buyers_monthly" ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}."L2_category_name" ;;
  }

  dimension: l2_gross_revenue_monthly {
    type: number
    sql: ${TABLE}."L2_gross_revenue_monthly" ;;
  }

  dimension: l2_orders_monthly {
    type: number
    sql: ${TABLE}."L2_orders_monthly" ;;
  }

  dimension: l3_buyers_monthly {
    type: number
    sql: ${TABLE}."L3_buyers_monthly" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."L3_category_name" ;;
  }

  dimension: l3_gross_revenue_monthly {
    type: number
    sql: ${TABLE}."L3_gross_revenue_monthly" ;;
  }

  dimension: l3_orders_monthly {
    type: number
    sql: ${TABLE}."L3_orders_monthly" ;;
  }

  dimension: month_year {
    type: string
    sql: ${TABLE}."month_year" ;;
  }

  dimension: orders_fixed_monthly {
    type: number
    sql: ${TABLE}."orders_fixed_monthly" ;;
  }

  measure: count {
    type: count
    drill_fields: [l3_category_name, l2_category_name, l1_category_name]
  }
}
