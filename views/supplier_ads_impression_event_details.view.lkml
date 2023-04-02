view: supplier_ads_impression_event_details {
  sql_table_name: "WORKSPACE_233686783"."supplier_ads_impression_event_details"
    ;;

  dimension: add_count {
    type: number
    sql: ${TABLE}."add_count" ;;
  }

  dimension: click_count {
    type: number
    sql: ${TABLE}."click_count" ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}."display_name" ;;
  }

  dimension: end_at {
    type: string
    sql: ${TABLE}."end_at" ;;
  }

  dimension_group: event_date_hour {
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
    sql: ${TABLE}."event_date_hour" ;;
  }

  dimension: fake {
    type: string
    sql: ${TABLE}."fake" ;;
  }

  dimension: impression_count {
    type: number
    sql: ${TABLE}."impression_count" ;;
  }

  dimension: invoiced {
    type: string
    sql: ${TABLE}."invoiced" ;;
  }

  dimension: media_format_id {
    type: string
    sql: ${TABLE}."media_format_id" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: purchase_count {
    type: number
    sql: ${TABLE}."purchase_count" ;;
  }

  dimension: show_count {
    type: number
    sql: ${TABLE}."show_count" ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}."spend" ;;
  }

  dimension: start_at {
    type: string
    sql: ${TABLE}."start_at" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: unique_advertisement_id {
    type: string
    sql: ${TABLE}."unique_advertisement_id" ;;
  }

  dimension: unique_campaign_id {
    type: string
    sql: ${TABLE}."unique_campaign_id" ;;
  }

  dimension: unique_supplier_id {
    type: string
    sql: ${TABLE}."unique_supplier_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [display_name, name]
  }
}
