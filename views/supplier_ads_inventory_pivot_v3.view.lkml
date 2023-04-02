view: supplier_ads_inventory_pivot_v3 {
  sql_table_name: "WORKSPACE_233686783"."supplier_ads_inventory_pivot_v3"
    ;;

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

  dimension: media_format_id {
    type: string
    sql: ${TABLE}."media_format_id" ;;
  }

  dimension: paid_be_impression {
    type: number
    sql: ${TABLE}."paid_be_impression" ;;
  }

  dimension: paid_fe_impression {
    type: number
    sql: ${TABLE}."paid_fe_impression" ;;
  }

  dimension: paid_pageload {
    type: number
    sql: ${TABLE}."paid_pageload" ;;
  }

  dimension: paid_request_count {
    type: number
    sql: ${TABLE}."paid_request_count" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: sp_be_impression {
    type: number
    sql: ${TABLE}."sp_be_impression" ;;
  }

  dimension: sp_fe_impression {
    type: number
    sql: ${TABLE}."sp_fe_impression" ;;
  }

  dimension: sp_pageload {
    type: number
    sql: ${TABLE}."sp_pageload" ;;
  }

  dimension: sp_request_count {
    type: number
    sql: ${TABLE}."sp_request_count" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
