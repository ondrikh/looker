view: campaign_sku_shopped {
  sql_table_name: "WORKSPACE_233686783"."campaign_sku_shopped"
    ;;

  dimension: abtest_segment {
    type: string
    sql: ${TABLE}."abtest_segment" ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}."campaign_id" ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}."campaign_name" ;;
  }

  dimension: campaign_type {
    type: string
    sql: ${TABLE}."campaign_type" ;;
  }

  dimension: campaign_unique_id {
    type: string
    sql: ${TABLE}."campaign_unique_id" ;;
  }

  dimension: clicked {
    type: string
    sql: ${TABLE}."clicked" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: gr_product {
    type: number
    sql: ${TABLE}."gr_product" ;;
  }

  dimension: gr_total {
    type: number
    sql: ${TABLE}."gr_total" ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: hours {
    type: string
    sql: ${TABLE}."hours" ;;
  }

  dimension: number_of_products {
    type: number
    sql: ${TABLE}."number_of_products" ;;
  }

  dimension: opened {
    type: string
    sql: ${TABLE}."opened" ;;
  }

  dimension: orders_total {
    type: number
    sql: ${TABLE}."orders_total" ;;
  }

  dimension: orders_with_product {
    type: number
    sql: ${TABLE}."orders_with_product" ;;
  }

  dimension_group: send {
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
    sql: ${TABLE}."send_time" ;;
  }

  dimension: sku_count {
    type: string
    sql: ${TABLE}."sku_count" ;;
  }

  dimension: sku_tracker {
    type: string
    sql: ${TABLE}."sku_tracker" ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}."subject" ;;
  }

  dimension: template_id {
    type: string
    sql: ${TABLE}."template_id" ;;
  }

  dimension: template_unique_id {
    type: string
    sql: ${TABLE}."template_unique_id" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name, user.id]
  }
}
