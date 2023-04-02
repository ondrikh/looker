view: sentiment {
  sql_table_name: "WORKSPACE_233686783"."sentiment"
    ;;
  drill_fields: [sentiment_id]

  dimension: sentiment_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."sentiment_id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: courier_rating {
    type: string
    sql: ${TABLE}."courier_rating" ;;
  }

  dimension: csat {
    type: string
    sql: ${TABLE}."CSAT" ;;
  }

  dimension: dataset {
    type: string
    sql: ${TABLE}."dataset" ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}."date" ;;
  }

  dimension: deliver_at {
    type: string
    sql: ${TABLE}."deliver_at" ;;
  }

  dimension: delivery_point_name {
    type: string
    sql: ${TABLE}."delivery_point_name" ;;
  }

  dimension: eval_group {
    type: string
    sql: ${TABLE}."eval_group" ;;
  }

  dimension: feedback_type {
    type: string
    sql: ${TABLE}."feedback_type" ;;
  }

  dimension: general_categories {
    type: string
    sql: ${TABLE}."general_categories" ;;
  }

  dimension: general_categories_orig {
    type: string
    sql: ${TABLE}."general_categories_orig" ;;
  }

  dimension: keywords {
    type: string
    sql: ${TABLE}."keywords" ;;
  }

  dimension: order_arpu_level {
    type: string
    sql: ${TABLE}."order_arpu_level" ;;
  }

  dimension: order_by_premium_user {
    type: string
    sql: ${TABLE}."order_by_premium_user" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."order_id" ;;
  }

  dimension: order_main_funnel {
    type: string
    sql: ${TABLE}."order_main_funnel" ;;
  }

  dimension: rating {
    type: string
    sql: ${TABLE}."rating" ;;
  }

  dimension: sentiment {
    type: string
    sql: ${TABLE}."sentiment" ;;
  }

  dimension: specific_categories {
    type: string
    sql: ${TABLE}."specific_categories" ;;
  }

  dimension: specific_categories_orig {
    type: string
    sql: ${TABLE}."specific_categories_orig" ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}."text" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: warehouse {
    type: string
    sql: ${TABLE}."warehouse" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      sentiment_id,
      delivery_point_name,
      warehouse_name,
      order.courier_name,
      order.warehouse_name,
      order.delivery_point_name,
      order.id
    ]
  }
}
