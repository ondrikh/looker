view: order_field_binding {
  sql_table_name: "WORKSPACE_233686783"."order_field_binding"
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

  dimension: source_order_field_id {
    type: string
    sql: ${TABLE}."source_order_field_id" ;;
  }

  dimension: source_order_field_unique_id {
    type: string
    sql: ${TABLE}."source_order_field_unique_id" ;;
  }

  dimension: source_required_amount {
    type: number
    sql: ${TABLE}."source_required_amount" ;;
  }

  dimension: target_amount {
    type: number
    sql: ${TABLE}."target_amount" ;;
  }

  dimension: target_order_field_id {
    type: string
    sql: ${TABLE}."target_order_field_id" ;;
  }

  dimension: target_order_field_unique_id {
    type: string
    sql: ${TABLE}."target_order_field_unique_id" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
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
    drill_fields: [id]
  }
}
