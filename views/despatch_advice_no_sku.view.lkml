view: despatch_advice_no_sku {
  sql_table_name: "WORKSPACE_233686783"."despatch_advice_no_sku"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: batch_number {
    type: string
    sql: ${TABLE}."batch_number" ;;
  }

  dimension: commercial_order_unique_id {
    type: string
    sql: ${TABLE}."commercial_order_unique_id" ;;
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

  dimension: customer_code {
    type: string
    sql: ${TABLE}."customer_code" ;;
  }

  dimension: despatch_advice_id {
    type: string
    sql: ${TABLE}."despatch_advice_id" ;;
  }

  dimension: despatch_advice_unique_id {
    type: string
    sql: ${TABLE}."despatch_advice_unique_id" ;;
  }

  dimension: ean {
    type: string
    sql: ${TABLE}."ean" ;;
  }

  dimension_group: expiration {
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
    sql: ${TABLE}."expiration_date" ;;
  }

  dimension: grocery_id {
    type: string
    sql: ${TABLE}."grocery_id" ;;
  }

  dimension: grocery_unique_id {
    type: string
    sql: ${TABLE}."grocery_unique_id" ;;
  }

  dimension: gtin {
    type: string
    sql: ${TABLE}."gtin" ;;
  }

  dimension: item_type {
    type: string
    sql: ${TABLE}."item_type" ;;
  }

  dimension: menu_code {
    type: string
    sql: ${TABLE}."menu_code" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: number_of_units {
    type: string
    sql: ${TABLE}."number_of_units" ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}."price" ;;
  }

  dimension: quantity {
    type: string
    sql: ${TABLE}."quantity" ;;
  }

  dimension: sscc {
    type: string
    sql: ${TABLE}."sscc" ;;
  }

  dimension: supplier_id {
    type: string
    sql: ${TABLE}."supplier_id" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: supplier_unique_id {
    type: string
    sql: ${TABLE}."supplier_unique_id" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}."unit" ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: vat_rate {
    type: string
    sql: ${TABLE}."vat_rate" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, supplier_name, name]
  }
}
