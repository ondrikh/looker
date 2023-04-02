view: data_pipeline_period_advertisement_test {
  sql_table_name: "WORKSPACE_233686783"."data_pipeline_period_advertisement_test"
    ;;

  dimension: aems_month_total_add_to_cart {
    type: string
    sql: ${TABLE}."aems_month_total_add_to_cart" ;;
  }

  dimension: aems_month_total_click_count {
    type: string
    sql: ${TABLE}."aems_month_total_click_count" ;;
  }

  dimension: aems_month_total_purchase_count {
    type: string
    sql: ${TABLE}."aems_month_total_purchase_count" ;;
  }

  dimension: aems_month_total_show_count {
    type: string
    sql: ${TABLE}."aems_month_total_show_count" ;;
  }

  dimension: diff_add {
    type: number
    sql: ${TABLE}."diff_add" ;;
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

  dimension: impression_add_to_cart_count {
    type: number
    sql: ${TABLE}."impression_add_to_cart_count" ;;
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

  dimension: ms_month_total_impression_count {
    type: string
    sql: ${TABLE}."ms_month_total_impression_count" ;;
  }

  dimension: ms_month_total_spent_sum {
    type: string
    sql: ${TABLE}."ms_month_total_spent_sum" ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}."period" ;;
  }

  dimension: unique_advertisement_id {
    type: string
    sql: ${TABLE}."unique_advertisement_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
