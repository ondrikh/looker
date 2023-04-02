view: supplier_ads_kpi {
  sql_table_name: "WORKSPACE_233686783"."supplier_ads_kpi"
    ;;

  dimension: average_budget_30 {
    type: number
    sql: ${TABLE}."average_budget_30" ;;
  }

  dimension: average_budget_7 {
    type: number
    sql: ${TABLE}."average_budget_7" ;;
  }

  dimension: average_budget_90 {
    type: number
    sql: ${TABLE}."average_budget_90" ;;
  }

  dimension: burned_campaigns_30 {
    type: number
    sql: ${TABLE}."burned_campaigns_30" ;;
  }

  dimension: burned_campaigns_7 {
    type: number
    sql: ${TABLE}."burned_campaigns_7" ;;
  }

  dimension: burned_campaigns_90 {
    type: number
    sql: ${TABLE}."burned_campaigns_90" ;;
  }

  dimension: campaign_spend_30 {
    type: number
    sql: ${TABLE}."campaign_spend_30" ;;
  }

  dimension: campaign_spend_7 {
    type: number
    sql: ${TABLE}."campaign_spend_7" ;;
  }

  dimension: campaign_spend_90 {
    type: number
    sql: ${TABLE}."campaign_spend_90" ;;
  }

  dimension: conversion_rate_to_euro_fin {
    type: number
    sql: ${TABLE}."conversion_rate_to_euro_fin" ;;
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

  dimension: number_campaigns_30 {
    type: number
    sql: ${TABLE}."number_campaigns_30" ;;
  }

  dimension: number_campaigns_7 {
    type: number
    sql: ${TABLE}."number_campaigns_7" ;;
  }

  dimension: number_campaigns_90 {
    type: number
    sql: ${TABLE}."number_campaigns_90" ;;
  }

  dimension: paid_be_impression {
    type: number
    sql: ${TABLE}."paid_be_impression" ;;
  }

  dimension: paid_fe_impression {
    type: number
    sql: ${TABLE}."paid_fe_impression" ;;
  }

  dimension: paid_request {
    type: number
    sql: ${TABLE}."paid_request" ;;
  }

  dimension: roas_campaigns_30 {
    type: number
    sql: ${TABLE}."roas_campaigns_30" ;;
  }

  dimension: roas_campaigns_7 {
    type: number
    sql: ${TABLE}."roas_campaigns_7" ;;
  }

  dimension: roas_campaigns_90 {
    type: number
    sql: ${TABLE}."roas_campaigns_90" ;;
  }

  dimension: self_service_campaign_spend_30 {
    type: number
    sql: ${TABLE}."self_service_campaign_spend_30" ;;
  }

  dimension: self_service_campaign_spend_7 {
    type: number
    sql: ${TABLE}."self_service_campaign_spend_7" ;;
  }

  dimension: self_service_campaign_spend_90 {
    type: number
    sql: ${TABLE}."self_service_campaign_spend_90" ;;
  }

  dimension: sp_be_impression {
    type: number
    sql: ${TABLE}."sp_be_impression" ;;
  }

  dimension: sp_fe_impression {
    type: number
    sql: ${TABLE}."sp_fe_impression" ;;
  }

  dimension: sp_request {
    type: number
    sql: ${TABLE}."sp_request" ;;
  }

  dimension: total_budget_30 {
    type: number
    sql: ${TABLE}."total_budget_30" ;;
  }

  dimension: total_budget_7 {
    type: number
    sql: ${TABLE}."total_budget_7" ;;
  }

  dimension: total_budget_90 {
    type: number
    sql: ${TABLE}."total_budget_90" ;;
  }

  dimension: total_impressions_30 {
    type: number
    sql: ${TABLE}."total_impressions_30" ;;
  }

  dimension: total_impressions_7 {
    type: number
    sql: ${TABLE}."total_impressions_7" ;;
  }

  dimension: total_impressions_90 {
    type: number
    sql: ${TABLE}."total_impressions_90" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
