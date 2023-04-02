view: data_pipeline_advertisement_test {
  sql_table_name: "WORKSPACE_233686783"."data_pipeline_advertisement_test"
    ;;

  dimension: click_count {
    type: string
    sql: ${TABLE}."click_count" ;;
  }

  dimension: diff_click {
    type: number
    sql: ${TABLE}."diff_click" ;;
  }

  dimension: diff_purchase {
    type: number
    sql: ${TABLE}."diff_purchase" ;;
  }

  dimension: diff_show {
    type: number
    sql: ${TABLE}."diff_show" ;;
  }

  dimension: impression_click_count {
    type: number
    sql: ${TABLE}."impression_click_count" ;;
  }

  dimension: impression_puchase_count {
    type: number
    sql: ${TABLE}."impression_puchase_count" ;;
  }

  dimension: impression_show_count {
    type: number
    sql: ${TABLE}."impression_show_count" ;;
  }

  dimension: media_format_id {
    type: string
    sql: ${TABLE}."media_format_id" ;;
  }

  dimension: purchase_count {
    type: string
    sql: ${TABLE}."purchase_count" ;;
  }

  dimension: show_count {
    type: string
    sql: ${TABLE}."show_count" ;;
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
    drill_fields: []
  }
}
