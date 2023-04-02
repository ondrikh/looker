view: campain_sku_shopped {
  sql_table_name: "WORKSPACE_233686783"."campain_sku_shopped"
    ;;

  dimension: abtest_segment {
    type: string
    sql: ${TABLE}."abtest_segment" ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}."campaign_id" ;;
  }

  dimension: campaign_unique_id {
    type: string
    sql: ${TABLE}."campaign_unique_id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: custom_field_tracker {
    type: string
    sql: ${TABLE}."custom_field_tracker" ;;
  }

  dimension: gr_product {
    type: number
    sql: ${TABLE}."gr_product" ;;
  }

  dimension: gr_total {
    type: number
    sql: ${TABLE}."gr_total" ;;
  }

  dimension: hours {
    type: number
    sql: ${TABLE}."hours" ;;
  }

  dimension: list_name {
    type: string
    sql: ${TABLE}."list_name" ;;
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
    drill_fields: [list_name, user.id]
  }
}
