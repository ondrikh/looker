view: supplier_ads_inventory {
  sql_table_name: "WORKSPACE_233686783"."supplier_ads_inventory"
    ;;

  dimension: active_advertisement_count {
    type: number
    sql: ${TABLE}."active_advertisement_count" ;;
  }

  dimension: be_impression_count {
    type: number
    sql: ${TABLE}."be_impression_count" ;;
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

  dimension: fe_impression_count {
    type: number
    sql: ${TABLE}."fe_impression_count" ;;
  }

  dimension: ga_impression_count {
    type: number
    sql: ${TABLE}."ga_impression_count" ;;
  }

  dimension: ga_pageviews_count {
    type: number
    sql: ${TABLE}."ga_pageviews_count" ;;
  }

  dimension: gf_pageload_count {
    type: number
    sql: ${TABLE}."gf_pageload_count" ;;
  }

  dimension: media_format_id {
    type: string
    sql: ${TABLE}."media_format_id" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
