view: supplier_limit {
  sql_table_name: "WORKSPACE_233686783"."supplier_limit"
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

  dimension: currency_if_applicable {
    type: string
    sql: ${TABLE}."currency_if_applicable" ;;
  }

  dimension: limit_type {
    type: string
    sql: ${TABLE}."limit_type" ;;
  }

  dimension: min_order_carton {
    type: string
    sql: ${TABLE}."min_order_carton" ;;
  }

  dimension: min_order_kg {
    type: string
    sql: ${TABLE}."min_order_kg" ;;
  }

  dimension: min_order_layer {
    type: string
    sql: ${TABLE}."min_order_layer" ;;
  }

  dimension: min_order_pallet {
    type: string
    sql: ${TABLE}."min_order_pallet" ;;
  }

  dimension: min_order_piece {
    type: string
    sql: ${TABLE}."min_order_piece" ;;
  }

  dimension: min_order_price {
    type: string
    sql: ${TABLE}."min_order_price" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: supplier_unique_id {
    type: string
    sql: ${TABLE}."supplier_unique_id" ;;
  }

  dimension: template_id {
    type: string
    sql: ${TABLE}."template_id" ;;
  }

  dimension: template_limit_check {
    type: string
    sql: ${TABLE}."template_limit_check" ;;
  }

  dimension: template_name {
    type: string
    sql: ${TABLE}."template_name" ;;
  }

  dimension: template_owner {
    type: string
    sql: ${TABLE}."template_owner" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, template_name]
  }
}
