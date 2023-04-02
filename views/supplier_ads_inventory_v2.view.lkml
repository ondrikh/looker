view: supplier_ads_inventory_v2 {
  sql_table_name: "WORKSPACE_233686783"."supplier_ads_inventory_v2"
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

  dimension: request_count {
    type: number
    sql: ${TABLE}."request_count" ;;
  }

  dimension: unique_advertisement_id_count {
    type: number
    value_format_name: id
    sql: ${TABLE}."unique_advertisement_id_count" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
