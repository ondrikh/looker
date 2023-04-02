view: commercial_order_tommorow {
  sql_table_name: "WORKSPACE_233686783"."commercial_order_tommorow"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension_group: closed {
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
    sql: ${TABLE}."closed_at" ;;
  }

  dimension: commercial_order_id {
    type: string
    sql: ${TABLE}."commercial_order_id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}."create_date" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension_group: deliver {
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
    sql: ${TABLE}."deliver_at" ;;
  }

  dimension: depth {
    type: string
    sql: ${TABLE}."depth" ;;
  }

  dimension: facing {
    type: string
    sql: ${TABLE}."facing" ;;
  }

  dimension: grocery_id {
    type: string
    sql: ${TABLE}."grocery_id" ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}."height" ;;
  }

  dimension: inbound_palette {
    type: string
    sql: ${TABLE}."inbound_palette" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: order_count {
    type: number
    sql: ${TABLE}."order_count" ;;
  }

  dimension: order_count_pieces {
    type: number
    sql: ${TABLE}."order_count_pieces" ;;
  }

  dimension: order_pallets {
    type: string
    sql: ${TABLE}."order_pallets" ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}."position" ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}."sector" ;;
  }

  dimension: stock_position_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."stock_position_id" ;;
  }

  dimension: supplier {
    type: string
    sql: ${TABLE}."supplier" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: volume {
    type: number
    sql: ${TABLE}."volume" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  dimension: weight {
    type: string
    sql: ${TABLE}."weight" ;;
  }

  dimension: width {
    type: string
    sql: ${TABLE}."width" ;;
  }

  dimension: wr_order_id {
    type: string
    sql: ${TABLE}."WR_order_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, warehouse_name, stock_position.id]
  }
}
