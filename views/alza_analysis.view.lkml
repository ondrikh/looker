view: alza_analysis {
  sql_table_name: "WORKSPACE_233686783"."alza_analysis"
    ;;

  dimension: actual_price {
    type: number
    sql: ${TABLE}."actual_price" ;;
  }

  dimension: average_competitor_price {
    type: number
    sql: ${TABLE}."average_competitor_price" ;;
  }

  dimension: competitor {
    type: string
    sql: ${TABLE}."competitor" ;;
  }

  dimension: competitor_price {
    type: number
    sql: ${TABLE}."competitor_price" ;;
  }

  dimension: competitor_product_name {
    type: string
    sql: ${TABLE}."competitor_product_name" ;;
  }

  dimension: relative_competitor_price {
    type: number
    sql: ${TABLE}."relative_competitor_price" ;;
  }

  dimension: rohlik_product_id {
    type: string
    sql: ${TABLE}."rohlik_product_id" ;;
  }

  dimension: rohlik_product_name {
    type: string
    sql: ${TABLE}."rohlik_product_name" ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}."snapshot_date" ;;
  }

  measure: count {
    type: count
    drill_fields: [rohlik_product_name, competitor_product_name]
  }
}
