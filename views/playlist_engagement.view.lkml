view: playlist_engagement {
  sql_table_name: "WORKSPACE_233686783"."playlist_engagement"
    ;;

  dimension: add_all_to_cart {
    type: string
    sql: ${TABLE}."add_all_to_cart" ;;
  }

  dimension: add_to_cart {
    type: string
    sql: ${TABLE}."add_to_cart" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: item_add_to_cart {
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
    sql: ${TABLE}."item_add_to_cart_time" ;;
  }

  dimension_group: item_impression {
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
    sql: ${TABLE}."item_impression_time" ;;
  }

  dimension: item_unique_id {
    type: string
    sql: ${TABLE}."item_unique_id" ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}."key" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."l1_category_name" ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}."l2_category_name" ;;
  }

  dimension: master_order_unique_id {
    type: string
    sql: ${TABLE}."master_order_unique_id" ;;
  }

  dimension_group: order_deliver {
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
    sql: ${TABLE}."order_deliver_at" ;;
  }

  dimension: order_state {
    type: string
    sql: ${TABLE}."order_state" ;;
  }

  dimension_group: order {
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
    sql: ${TABLE}."order_time" ;;
  }

  dimension_group: playlist_impression {
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
    sql: ${TABLE}."playlist_impression_time" ;;
  }

  dimension: playlist_name {
    type: string
    sql: ${TABLE}."playlist_name" ;;
  }

  dimension: playlist_unique_id {
    type: string
    sql: ${TABLE}."playlist_unique_id" ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}."product" ;;
  }

  dimension: session_unique_id {
    type: string
    sql: ${TABLE}."session_unique_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [playlist_name, l2_category_name, l1_category_name]
  }
}
