view: finance_supplier_invoice_items {
  sql_table_name: "WORKSPACE_233686783"."finance_supplier_invoice_items"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}."amount" ;;
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

  dimension: gtin {
    type: string
    sql: ${TABLE}."gtin" ;;
  }

  dimension: menu_code {
    type: string
    sql: ${TABLE}."menu_code" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."product_id" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: supplier_invoice_id {
    type: string
    sql: ${TABLE}."supplier_invoice_id" ;;
  }

  dimension: supplier_invoice_unique_id {
    type: string
    sql: ${TABLE}."supplier_invoice_unique_id" ;;
  }

  dimension: total_price {
    type: string
    sql: ${TABLE}."total_price" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}."unit" ;;
  }

  dimension: unit_price_excl_vat {
    type: string
    sql: ${TABLE}."unit_price_excl_vat" ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      product.name,
      product.l2_category_name,
      product.product_family_name,
      product.l4_category_name,
      product.id,
      product.l5_category_name,
      product.l1_category_name,
      product.l3_category_name
    ]
  }
}
