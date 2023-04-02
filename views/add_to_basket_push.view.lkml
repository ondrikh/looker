view: add_to_basket_push {
  sql_table_name: "WORKSPACE_233686783"."add_to_basket_push"
    ;;

  dimension: campaign_name {
    type: string
    sql: ${TABLE}."campaign_name" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: finished_order {
    type: string
    sql: ${TABLE}."finished_order" ;;
  }

  dimension_group: first_suborder {
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
    sql: ${TABLE}."first_suborder_at" ;;
  }

  dimension: gr {
    type: number
    sql: ${TABLE}."gr" ;;
  }

  dimension: gr_eur {
    type: number
    sql: ${TABLE}."gr_eur" ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."order_id" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension: send_date {
    type: string
    sql: ${TABLE}."send_date" ;;
  }

  dimension_group: sent {
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
    sql: ${TABLE}."sent_at" ;;
  }

  dimension: suborder {
    type: string
    sql: ${TABLE}."suborder" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name, order.courier_name, order.warehouse_name, order.delivery_point_name, order.id]
  }
}
