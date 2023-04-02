view: skuudle_assortment_vs_competitor_prices {
  sql_table_name: "WORKSPACE_233686783"."skuudle_assortment_vs_competitor_prices"
    ;;

  dimension: competitor {
    type: string
    sql: ${TABLE}."competitor" ;;
  }

  dimension: competitor_prices_id {
    type: string
    sql: ${TABLE}."competitor_prices_id" ;;
  }

  dimension: competitor_prices_unique_id {
    type: string
    sql: ${TABLE}."competitor_prices_unique_id" ;;
  }

  dimension_group: competitor_prices_updated_at {
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
    sql: ${TABLE}."competitor_prices_updated_at_date" ;;
  }

  dimension_group: competitor_prices_updated_at_exact {
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
    sql: ${TABLE}."competitor_prices_updated_at_exact" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: cpr_not_updated {
    type: string
    sql: ${TABLE}."CPR_not_updated" ;;
  }

  dimension: product_name_skuudle {
    type: string
    sql: ${TABLE}."product_name_skuudle" ;;
  }

  dimension_group: skuudle_date_collected {
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
    sql: ${TABLE}."skuudle_date_collected" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
