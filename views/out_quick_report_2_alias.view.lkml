view: out_quick_report_2_alias {
  sql_table_name: "WORKSPACE_233686783"."out_quick_report_2_alias"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: brand_id {
    type: string
    sql: ${TABLE}."brand_id" ;;
  }

  dimension: competitor {
    type: string
    sql: ${TABLE}."competitor" ;;
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

  dimension: delisted_at {
    type: string
    sql: ${TABLE}."delisted_at" ;;
  }

  dimension: family_country {
    type: string
    sql: ${TABLE}."family_country" ;;
  }

  dimension: joint_competitor {
    type: string
    sql: ${TABLE}."joint_competitor" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}."L2_category_name" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."L3_category_name" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: net_cogs_last_30 {
    type: number
    sql: ${TABLE}."Net_COGS_last_30" ;;
  }

  dimension: nr_last_30 {
    type: number
    sql: ${TABLE}."NR_last_30" ;;
  }

  dimension: packages_last_30 {
    type: number
    sql: ${TABLE}."Packages_last_30" ;;
  }

  dimension: prime_product_unique_id {
    type: string
    sql: ${TABLE}."prime_product_unique_id" ;;
  }

  dimension: product_family_competitor {
    type: string
    sql: ${TABLE}."product_family_competitor" ;;
  }

  dimension: product_family_unique_id {
    type: string
    sql: ${TABLE}."product_family_unique_id" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: transactions_sum_net_cogs_with_bonus_last_30 {
    type: number
    sql: ${TABLE}."transactions_sum_net_COGS_with_bonus_last_30" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, l1_category_name, l3_category_name, name, l2_category_name]
  }
}
