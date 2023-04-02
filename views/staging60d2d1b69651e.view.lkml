view: staging60d2d1b69651e {
  sql_table_name: "WORKSPACE_233686783"."staging60d2d1b69651e"
    ;;

  dimension: amount {
    type: number
    sql: ${TABLE}."amount" ;;
  }

  dimension: billing_email {
    type: string
    sql: ${TABLE}."billing_email" ;;
  }

  dimension: bonus_amount {
    type: number
    sql: ${TABLE}."bonus_amount" ;;
  }

  dimension: calculated_bonus_amount {
    type: number
    sql: ${TABLE}."calculated_bonus_amount" ;;
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

  dimension: commercial_bonus_periods_unique_id {
    type: string
    sql: ${TABLE}."commercial_bonus_periods_unique_id" ;;
  }

  dimension: commercial_bonus_unique_id {
    type: string
    sql: ${TABLE}."commercial_bonus_unique_id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: dic {
    type: string
    sql: ${TABLE}."dic" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: unit_buy_price_excl_vat {
    type: number
    sql: ${TABLE}."unit_buy_price_excl_vat" ;;
  }

  dimension: unit_buy_price_incl_vat {
    type: number
    sql: ${TABLE}."unit_buy_price_incl_vat" ;;
  }

  dimension: warehouse_inventory_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."warehouse_inventory_id" ;;
  }

  dimension: warehouse_replenishment_id {
    type: string
    sql: ${TABLE}."warehouse_replenishment_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      name,
      supplier_name,
      warehouse_inventory.warehouse_name,
      warehouse_inventory.id,
      warehouse_inventory.country_of_origin_name,
      warehouse_inventory.primary_supplier_name
    ]
  }
}
