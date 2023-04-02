view: finance_supplier_invoice {
  sql_table_name: "WORKSPACE_233686783"."finance_supplier_invoice"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension_group: created_at {
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

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }

  dimension: deleted {
    type: string
    sql: ${TABLE}."deleted" ;;
  }

  dimension_group: delivery {
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
    sql: ${TABLE}."delivery_date" ;;
  }

  dimension: despatch_advice_no {
    type: string
    sql: ${TABLE}."despatch_advice_no" ;;
  }

  dimension_group: document_created {
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
    sql: ${TABLE}."document_created_at" ;;
  }

  dimension: document_function {
    type: string
    sql: ${TABLE}."document_function" ;;
  }

  dimension: document_id {
    type: string
    sql: ${TABLE}."document_id" ;;
  }

  dimension: document_no {
    type: string
    sql: ${TABLE}."document_no" ;;
  }

  dimension: document_type_no {
    type: string
    sql: ${TABLE}."document_type_no" ;;
  }

  dimension: document_unique_id {
    type: string
    sql: ${TABLE}."document_unique_id" ;;
  }

  dimension: document_unique_no {
    type: string
    sql: ${TABLE}."document_unique_no" ;;
  }

  dimension: is_paid {
    type: string
    sql: ${TABLE}."is_paid" ;;
  }

  dimension: issue_date {
    type: string
    sql: ${TABLE}."issue_date" ;;
  }

  dimension: message_id {
    type: string
    sql: ${TABLE}."message_id" ;;
  }

  dimension: message_type {
    type: string
    sql: ${TABLE}."message_type" ;;
  }

  dimension: no_of_items {
    type: string
    sql: ${TABLE}."no_of_items" ;;
  }

  dimension: order_no {
    type: string
    sql: ${TABLE}."order_no" ;;
  }

  dimension: order_unique_no {
    type: string
    sql: ${TABLE}."order_unique_no" ;;
  }

  dimension: price_excl_vat {
    type: string
    sql: ${TABLE}."price_excl_vat" ;;
  }

  dimension: price_incl_vat {
    type: string
    sql: ${TABLE}."price_incl_vat" ;;
  }

  dimension: receiver_code {
    type: string
    sql: ${TABLE}."receiver_code" ;;
  }

  dimension: reverse_charge {
    type: string
    sql: ${TABLE}."reverse_charge" ;;
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

  measure: count {
    type: count
    drill_fields: [id, supplier_name]
  }
}
