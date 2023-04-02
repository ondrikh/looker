view: price_suggestion_monitoring_v2 {
  sql_table_name: "WORKSPACE_233686783"."price_suggestion_monitoring_v2"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date_of_action {
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
    sql: ${TABLE}."date_of_action" ;;
  }

  dimension: error_reason {
    type: string
    sql: ${TABLE}."error_reason" ;;
  }

  dimension: family_product_unique_id {
    type: string
    sql: ${TABLE}."family_product_unique_id" ;;
  }

  dimension: is_family_proposal {
    type: string
    sql: ${TABLE}."is_family_proposal" ;;
  }

  dimension: is_prime {
    type: string
    sql: ${TABLE}."is_prime" ;;
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

  dimension: price_suggestion_origin {
    type: string
    sql: ${TABLE}."price_suggestion_origin" ;;
  }

  dimension: price_suggestion_unique_id {
    type: string
    sql: ${TABLE}."price_suggestion_unique_id" ;;
  }

  dimension: pricing_group {
    type: string
    sql: ${TABLE}."pricing_group" ;;
  }

  dimension: pricing_kvi {
    type: string
    sql: ${TABLE}."pricing_KVI" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: responsible_user {
    type: string
    sql: ${TABLE}."responsible_user" ;;
  }

  dimension: responsible_user_senior {
    type: string
    sql: ${TABLE}."responsible_user_senior" ;;
  }

  dimension: rohlik_price {
    type: number
    sql: ${TABLE}."rohlik_price" ;;
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

  dimension: state_of_price_proposal {
    type: string
    sql: ${TABLE}."state_of_price_proposal" ;;
  }

  dimension: suggested_price {
    type: number
    sql: ${TABLE}."suggested_price" ;;
  }

  dimension: suspension_reason {
    type: string
    sql: ${TABLE}."suspension_reason" ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name, l3_category_name, l2_category_name, l1_category_name]
  }
}
