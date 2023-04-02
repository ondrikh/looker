view: quick_report_2 {
  sql_table_name: "WORKSPACE_233686783"."quick_report_2"
    ;;

  dimension: competitor {
    type: string
    sql: ${TABLE}."competitor" ;;
  }

  dimension: competitor_external_unique_id {
    type: string
    sql: ${TABLE}."competitor_external_unique_id" ;;
  }

  dimension: competitor_product_name {
    type: string
    sql: ${TABLE}."competitor_product_name" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: deleted {
    type: string
    sql: ${TABLE}."deleted" ;;
  }

  dimension: family_pairing {
    type: string
    sql: ${TABLE}."family_pairing" ;;
  }

  dimension: filt {
    type: string
    sql: ${TABLE}."filt" ;;
  }

  dimension: net_cogs_last_30 {
    type: number
    sql: ${TABLE}."Net_COGS_last_30" ;;
  }

  dimension: nr_last_30 {
    type: number
    sql: ${TABLE}."NR_last_30" ;;
  }

  dimension: number_of_competitors {
    type: string
    sql: ${TABLE}."number_of_competitors" ;;
  }

  dimension: number_of_competitors_family_included {
    type: string
    sql: ${TABLE}."number_of_competitors_family_included" ;;
  }

  dimension: packages_last_30 {
    type: number
    sql: ${TABLE}."Packages_last_30" ;;
  }

  dimension: prime_product_unique_id {
    type: string
    sql: ${TABLE}."prime_product_unique_id" ;;
  }

  dimension: product_family_unique_id {
    type: string
    sql: ${TABLE}."product_family_unique_id" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: transactions_sum_net_cogs_with_bonus_last_30 {
    type: number
    sql: ${TABLE}."transactions_sum_net_COGS_with_bonus_last_30" ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name, competitor_product_name]
  }
}
