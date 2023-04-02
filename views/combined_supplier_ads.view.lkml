view: combined_supplier_ads {
  sql_table_name: "WORKSPACE_233686783"."combined_supplier_ads"
    ;;

  dimension: active {
    type: string
    sql: ${TABLE}."active" ;;
  }

  dimension: active_campaign {
    type: string
    sql: ${TABLE}."active_campaign" ;;
  }

  dimension: admin_color {
    type: string
    sql: ${TABLE}."admin_color" ;;
  }

  dimension: advertisement_id {
    type: string
    sql: ${TABLE}."advertisement_id" ;;
  }

  dimension: advertisement_state {
    type: string
    sql: ${TABLE}."advertisement_state" ;;
  }

  dimension_group: approved {
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
    sql: ${TABLE}."approved_at" ;;
  }

  dimension: approved_by {
    type: string
    sql: ${TABLE}."approved_by" ;;
  }

  dimension: approved_by_name {
    type: string
    sql: ${TABLE}."approved_by_name" ;;
  }

  dimension: budget_daily_campaign {
    type: number
    sql: ${TABLE}."budget_daily_campaign" ;;
  }

  dimension: budget_daily_limit {
    type: number
    sql: ${TABLE}."budget_daily_limit" ;;
  }

  dimension: budget_spent {
    type: number
    sql: ${TABLE}."budget_spent" ;;
  }

  dimension: budget_total_campaign {
    type: number
    sql: ${TABLE}."budget_total_campaign" ;;
  }

  dimension: budget_total_campaign_eur {
    type: number
    sql: ${TABLE}."budget_total_campaign_eur" ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}."campaign_id" ;;
  }

  dimension: campaign_state {
    type: string
    sql: ${TABLE}."campaign_state" ;;
  }

  dimension: content_category_id {
    type: string
    sql: ${TABLE}."content_category_id" ;;
  }

  dimension: content_media_url {
    type: string
    sql: ${TABLE}."content_media_url" ;;
  }

  dimension: content_media_url_mweb {
    type: string
    sql: ${TABLE}."content_media_url_mweb" ;;
  }

  dimension: content_product_id {
    type: string
    sql: ${TABLE}."content_product_id" ;;
  }

  dimension: content_target_url {
    type: string
    sql: ${TABLE}."content_target_url" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: country_nr_eur {
    type: number
    sql: ${TABLE}."country_nr_eur" ;;
  }

  dimension: cpm_bid {
    type: number
    value_format_name: id
    sql: ${TABLE}."cpm_bid" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension_group: created_at_campaign {
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
    sql: ${TABLE}."created_at_campaign" ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}."created_by" ;;
  }

  dimension: created_by_campaign {
    type: string
    sql: ${TABLE}."created_by_campaign" ;;
  }

  dimension: created_by_name {
    type: string
    sql: ${TABLE}."created_by_name" ;;
  }

  dimension: credit_leftover {
    type: number
    sql: ${TABLE}."credit_leftover" ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."date" ;;
  }

  dimension: deleted {
    type: string
    sql: ${TABLE}."deleted" ;;
  }

  dimension: deleted_campaign {
    type: string
    sql: ${TABLE}."deleted_campaign" ;;
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

  dimension_group: end_at_campaign {
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
    sql: ${TABLE}."end_at_campaign" ;;
  }

  dimension: help_column_for_sums_in_tableau {
    type: number
    sql: ${TABLE}."help_column_for_sums_in_tableau" ;;
  }

  dimension: impression_forecast_lower {
    type: number
    sql: ${TABLE}."impression_forecast_lower" ;;
  }

  dimension: impression_forecast_upper {
    type: number
    sql: ${TABLE}."impression_forecast_upper" ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}."impressions" ;;
  }

  dimension: impressions_daily_limit {
    type: number
    sql: ${TABLE}."impressions_daily_limit" ;;
  }

  dimension: media_format_id {
    type: string
    sql: ${TABLE}."media_format_id" ;;
  }

  dimension: media_format_name {
    type: string
    sql: ${TABLE}."media_format_name" ;;
  }

  dimension: monetization_supplier_id {
    type: string
    sql: ${TABLE}."monetization_supplier_id" ;;
  }

  dimension: okr_value {
    type: number
    sql: ${TABLE}."okr_value" ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."product_id" ;;
  }

  dimension: public_ref {
    type: string
    sql: ${TABLE}."public_ref" ;;
  }

  dimension: spent_campaign {
    type: number
    sql: ${TABLE}."spent_campaign" ;;
  }

  dimension: spent_till_yesterday {
    type: number
    sql: ${TABLE}."spent_till_yesterday" ;;
  }

  dimension_group: spent_till_yesterday_updated {
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
    sql: ${TABLE}."spent_till_yesterday_updated_at" ;;
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

  dimension_group: start_at_campaign {
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
    sql: ${TABLE}."start_at_campaign" ;;
  }

  dimension: strategy_id {
    type: string
    sql: ${TABLE}."strategy_id" ;;
  }

  dimension: supplier_id_rohlik_db {
    type: string
    sql: ${TABLE}."supplier_id_rohlik_db" ;;
  }

  dimension: supplier_name_display {
    type: string
    sql: ${TABLE}."supplier_name_display" ;;
  }

  dimension: supplier_name_official {
    type: string
    sql: ${TABLE}."supplier_name_official" ;;
  }

  dimension: supplier_note {
    type: string
    sql: ${TABLE}."supplier_note" ;;
  }

  dimension: supplier_nr_eur {
    type: number
    sql: ${TABLE}."supplier_nr_eur" ;;
  }

  dimension_group: updated_at {
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
    sql: ${TABLE}."updated_at" ;;
  }

  dimension_group: updated_at_campaign {
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
    sql: ${TABLE}."updated_at_campaign" ;;
  }

  dimension: updated_by {
    type: string
    sql: ${TABLE}."updated_by" ;;
  }

  dimension: updated_by_campaign {
    type: string
    sql: ${TABLE}."updated_by_campaign" ;;
  }

  dimension: updated_by_name {
    type: string
    sql: ${TABLE}."updated_by_name" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      media_format_name,
      updated_by_name,
      approved_by_name,
      created_by_name,
      product.name,
      product.l2_category_name,
      product.product_family_name,
      product.l4_category_name,
      product.id,
      product.l5_category_name,
      product.l1_category_name,
      product.l3_category_name
    ]
  }
}
