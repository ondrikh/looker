view: supplier_ads_data_pipeline_advertisement_test {
  sql_table_name: "WORKSPACE_233686783"."supplier_ads_data_pipeline_advertisement_test"
    ;;

  dimension: aes_click {
    type: number
    sql: ${TABLE}."aes_click" ;;
  }

  dimension: aes_purchase {
    type: number
    sql: ${TABLE}."aes_purchase" ;;
  }

  dimension: aes_show {
    type: number
    sql: ${TABLE}."aes_show" ;;
  }

  dimension: aes_spent {
    type: number
    sql: ${TABLE}."aes_spent" ;;
  }

  dimension: as_impression {
    type: number
    sql: ${TABLE}."as_impression" ;;
  }

  dimension: as_spent {
    type: number
    sql: ${TABLE}."as_spent" ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}."campaign_name" ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}."end_at" ;;
  }

  dimension: invoiced {
    type: string
    sql: ${TABLE}."invoiced" ;;
  }

  dimension: media_format_id {
    type: string
    sql: ${TABLE}."media_format_id" ;;
  }

  dimension: r_click {
    type: number
    sql: ${TABLE}."r_click" ;;
  }

  dimension: r_count {
    type: number
    sql: ${TABLE}."r_count" ;;
  }

  dimension: r_purchase {
    type: number
    sql: ${TABLE}."r_purchase" ;;
  }

  dimension: r_show {
    type: number
    sql: ${TABLE}."r_show" ;;
  }

  dimension: r_spend {
    type: number
    sql: ${TABLE}."r_spend" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."start_at" ;;
  }

  dimension: unique_advertisement_id {
    type: string
    sql: ${TABLE}."unique_advertisement_id" ;;
  }

  dimension: unique_campaign_id {
    type: string
    sql: ${TABLE}."unique_campaign_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}
