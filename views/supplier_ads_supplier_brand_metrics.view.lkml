view: supplier_ads_supplier_brand_metrics {
  sql_table_name: "WORKSPACE_233686783"."supplier_ads_supplier_brand_metrics"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date_day {
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
    sql: ${TABLE}."date_day" ;;
  }

  dimension: impression_show_count {
    type: number
    sql: ${TABLE}."impression_show_count" ;;
  }

  dimension: impression_show_daily {
    type: number
    sql: ${TABLE}."impression_show_daily" ;;
  }

  dimension: impression_show_daily_share {
    type: number
    sql: ${TABLE}."impression_show_daily_share" ;;
  }

  dimension: media_format {
    type: string
    sql: ${TABLE}."media_format" ;;
  }

  dimension: media_format_id {
    type: string
    sql: ${TABLE}."media_format_id" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: unique_supplier_id {
    type: string
    sql: ${TABLE}."unique_supplier_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [supplier_name]
  }
}
