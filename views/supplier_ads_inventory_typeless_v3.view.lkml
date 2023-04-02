view: supplier_ads_inventory_typeless_v3 {
  sql_table_name: "WORKSPACE_233686783"."supplier_ads_inventory_typeless_v3"
    ;;

  dimension: ads_daily_count {
    type: number
    sql: ${TABLE}."ads_daily_count" ;;
  }

  dimension: ads_monthly_count {
    type: number
    sql: ${TABLE}."ads_monthly_count" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date_hour {
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
    sql: ${TABLE}."date_hour" ;;
  }

  dimension: impression_count {
    type: number
    sql: ${TABLE}."impression_count" ;;
  }

  dimension: impression_show_count {
    type: number
    sql: ${TABLE}."impression_show_count" ;;
  }

  dimension: impression_spend {
    type: number
    sql: ${TABLE}."impression_spend" ;;
  }

  dimension: media_format_id {
    type: string
    sql: ${TABLE}."media_format_id" ;;
  }

  dimension: page_load_count {
    type: number
    sql: ${TABLE}."page_load_count" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: request_count {
    type: number
    sql: ${TABLE}."request_count" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
