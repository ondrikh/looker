view: target_control_self_service_evaluation {
  sql_table_name: "WORKSPACE_233686783"."target_control_self_service_evaluation"
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}."campaign_name" ;;
  }

  dimension: count_target_control_self_service_evaluation {
    type: string
    sql: ${TABLE}."count" ;;
  }

  dimension: gr {
    type: number
    sql: ${TABLE}."gr" ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
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

  dimension: master_order_unique_id {
    type: string
    sql: ${TABLE}."master_order_unique_id" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension: order_user_unique_id {
    type: string
    sql: ${TABLE}."order_user_unique_id" ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."product_id" ;;
  }

  dimension: start_time {
    type: string
    sql: ${TABLE}."start_time" ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}."time" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      l3_category_name,
      l1_category_name,
      l2_category_name,
      campaign_name,
      user.id,
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
