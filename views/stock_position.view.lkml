view: stock_position {
  sql_table_name: "WORKSPACE_233686783"."stock_position"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: depth {
    type: string
    sql: ${TABLE}."depth" ;;
  }

  dimension: facing {
    type: string
    sql: ${TABLE}."facing" ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}."height" ;;
  }

  dimension: position_type {
    type: string
    sql: ${TABLE}."position_type" ;;
  }

  dimension: saleability_type {
    type: string
    sql: ${TABLE}."saleability_type" ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}."sector" ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}."segment" ;;
  }

  dimension: shelf {
    type: string
    sql: ${TABLE}."shelf" ;;
  }

  dimension: shelf_deck {
    type: string
    sql: ${TABLE}."shelf_deck" ;;
  }

  dimension: sort {
    type: string
    sql: ${TABLE}."sort" ;;
  }

  dimension: store_id {
    type: string
    sql: ${TABLE}."store_id" ;;
  }

  dimension: store_unique_id {
    type: string
    sql: ${TABLE}."store_unique_id" ;;
  }

  dimension: threshold_amount {
    type: string
    sql: ${TABLE}."threshold_amount" ;;
  }

  dimension: threshold_percentage_amount {
    type: string
    sql: ${TABLE}."threshold_percentage_amount" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: volume {
    type: string
    sql: ${TABLE}."volume" ;;
  }

  dimension: volume_percentage {
    type: string
    sql: ${TABLE}."volume_percentage" ;;
  }

  dimension: width {
    type: string
    sql: ${TABLE}."width" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, commercial_order_tommorow.count, warehouse_inventory.count, warehouse_inventory_from_lvl1.count]
  }
}
