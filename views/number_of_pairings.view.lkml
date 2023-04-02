view: number_of_pairings {
  sql_table_name: "WORKSPACE_233686783"."number_of_pairings"
    ;;

  dimension: competitor {
    type: string
    sql: ${TABLE}."competitor" ;;
  }

  dimension: competitor_prices_pairing_unique_id {
    type: string
    sql: ${TABLE}."competitor_prices_pairing_unique_id" ;;
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

  dimension: created_by_id {
    type: string
    sql: ${TABLE}."created_by_id" ;;
  }

  dimension: created_by_user_email {
    type: string
    sql: ${TABLE}."created_by_user_email" ;;
  }

  dimension: created_by_user_name {
    type: string
    sql: ${TABLE}."created_by_user_name" ;;
  }

  dimension: rohlik_l1_category_name {
    type: string
    sql: ${TABLE}."rohlik_L1_category_name" ;;
  }

  dimension: rohlik_l2_category_name {
    type: string
    sql: ${TABLE}."rohlik_L2_category_name" ;;
  }

  dimension: rohlik_l3_category_name {
    type: string
    sql: ${TABLE}."rohlik_L3_category_name" ;;
  }

  dimension: rohlik_product_name {
    type: string
    sql: ${TABLE}."rohlik_product_name" ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}."snapshot_date" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      created_by_user_name,
      rohlik_product_name,
      competitor_product_name,
      rohlik_l1_category_name,
      rohlik_l2_category_name,
      rohlik_l3_category_name
    ]
  }
}
