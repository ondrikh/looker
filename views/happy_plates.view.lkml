view: happy_plates {
  sql_table_name: "WORKSPACE_233686783"."happy_plates"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: commission {
    type: number
    sql: ${TABLE}."commission" ;;
  }

  dimension: count_happy_plates {
    type: number
    sql: ${TABLE}."count" ;;
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

  dimension: gr {
    type: number
    sql: ${TABLE}."GR" ;;
  }

  dimension: inventory_item_id {
    type: string
    sql: ${TABLE}."inventory_item_id" ;;
  }

  dimension: is_first_order {
    type: string
    sql: ${TABLE}."is_first_order" ;;
  }

  dimension: order_commission_sum {
    type: number
    sql: ${TABLE}."order_commission_sum" ;;
  }

  dimension: order_field_id {
    type: string
    sql: ${TABLE}."order_field_id" ;;
  }

  dimension: order_gr_sum {
    type: number
    sql: ${TABLE}."order_GR_sum" ;;
  }

  dimension_group: time {
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
    sql: ${TABLE}."time" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: unit_sell_price_incl_vat {
    type: string
    sql: ${TABLE}."unit_sell_price_incl_vat" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
