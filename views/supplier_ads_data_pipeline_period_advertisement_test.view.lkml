view: supplier_ads_data_pipeline_period_advertisement_test {
  sql_table_name: "WORKSPACE_233686783"."supplier_ads_data_pipeline_period_advertisement_test"
    ;;

  dimension: aems_add {
    type: number
    sql: ${TABLE}."aems_add" ;;
  }

  dimension: aems_click {
    type: number
    sql: ${TABLE}."aems_click" ;;
  }

  dimension: aems_purchase {
    type: number
    sql: ${TABLE}."aems_purchase" ;;
  }

  dimension: aems_show {
    type: number
    sql: ${TABLE}."aems_show" ;;
  }

  dimension: aems_spend {
    type: number
    sql: ${TABLE}."aems_spend" ;;
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

  dimension: ms_impression {
    type: number
    sql: ${TABLE}."ms_impression" ;;
  }

  dimension: ms_spent {
    type: number
    sql: ${TABLE}."ms_spent" ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}."period" ;;
  }

  dimension: r_add {
    type: number
    sql: ${TABLE}."r_add" ;;
  }

  dimension: r_click {
    type: number
    sql: ${TABLE}."r_click" ;;
  }

  dimension: r_count {
    type: number
    sql: ${TABLE}."r_count" ;;
  }

  dimension: r_puchase {
    type: number
    sql: ${TABLE}."r_puchase" ;;
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
