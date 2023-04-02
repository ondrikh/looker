view: competitor_price_snapshot_12mnths {
  sql_table_name: "WORKSPACE_233686783"."competitor_price_snapshot_12mnths"
    ;;

  dimension: action_price {
    type: number
    sql: ${TABLE}."action_price" ;;
  }

  dimension: action_unit_price {
    type: number
    sql: ${TABLE}."action_unit_price" ;;
  }

  dimension: actual_price {
    type: number
    sql: ${TABLE}."actual_price" ;;
  }

  dimension: actual_unit_price {
    type: number
    sql: ${TABLE}."actual_unit_price" ;;
  }

  dimension: competitor {
    type: string
    sql: ${TABLE}."competitor" ;;
  }

  dimension: competitor_action_price {
    type: number
    sql: ${TABLE}."competitor_action_price" ;;
  }

  dimension: competitor_action_unit_price {
    type: string
    sql: ${TABLE}."competitor_action_unit_price" ;;
  }

  dimension: competitor_actual_price {
    type: number
    sql: ${TABLE}."competitor_actual_price" ;;
  }

  dimension: competitor_actual_unit_price {
    type: number
    sql: ${TABLE}."competitor_actual_unit_price" ;;
  }

  dimension: competitor_name {
    type: string
    sql: ${TABLE}."competitor_name" ;;
  }

  dimension: competitor_normal_price {
    type: number
    sql: ${TABLE}."competitor_normal_price" ;;
  }

  dimension: competitor_normal_unit_price {
    type: number
    sql: ${TABLE}."competitor_normal_unit_price" ;;
  }

  dimension: competitor_price_type {
    type: string
    sql: ${TABLE}."competitor_price_type" ;;
  }

  dimension: competitor_unit {
    type: string
    sql: ${TABLE}."competitor_unit" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: external_unique_id {
    type: string
    sql: ${TABLE}."external_unique_id" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: normal_price {
    type: number
    sql: ${TABLE}."normal_price" ;;
  }

  dimension: normal_unit_price {
    type: number
    sql: ${TABLE}."normal_unit_price" ;;
  }

  dimension: pairing_created_at {
    type: string
    sql: ${TABLE}."pairing_created_at" ;;
  }

  dimension: pairing_updated_at {
    type: string
    sql: ${TABLE}."pairing_updated_at" ;;
  }

  dimension: price_multiplier {
    type: number
    sql: ${TABLE}."price_multiplier" ;;
  }

  dimension: product_action_reason {
    type: string
    sql: ${TABLE}."product_action_reason" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}."snapshot_date" ;;
  }

  dimension: snapshot_id {
    type: string
    sql: ${TABLE}."snapshot_id" ;;
  }

  dimension: unit_coefficient {
    type: number
    sql: ${TABLE}."unit_coefficient" ;;
  }

  dimension: unit_measure {
    type: string
    sql: ${TABLE}."unit_measure" ;;
  }

  dimension: unit_type {
    type: string
    sql: ${TABLE}."unit_type" ;;
  }

  dimension: warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."warehouse_inventory_unique_id" ;;
  }

  dimension: weight_nr {
    type: number
    sql: ${TABLE}."weight_nr" ;;
  }

  dimension: weight_packages {
    type: number
    sql: ${TABLE}."weight_packages" ;;
  }

  measure: count {
    type: count
    drill_fields: [competitor_name, name]
  }
}
