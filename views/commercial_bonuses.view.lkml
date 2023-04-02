view: commercial_bonuses {
  sql_table_name: "WORKSPACE_233686783"."commercial_bonuses"
    ;;
  drill_fields: [lov_commercial_bonuses_id]

  dimension: lov_commercial_bonuses_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."lov_commercial_bonuses_id" ;;
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

  dimension: created_by {
    type: string
    sql: ${TABLE}."created_by" ;;
  }

  dimension: deleted {
    type: string
    sql: ${TABLE}."deleted" ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}."deleted_at" ;;
  }

  dimension: deleted_by {
    type: string
    sql: ${TABLE}."deleted_by" ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}."id" ;;
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

  dimension: warehouse_supplier_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."warehouse_supplier_id" ;;
  }

  dimension: warehouse_supplier_unique_id {
    type: string
    sql: ${TABLE}."warehouse_supplier_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [lov_commercial_bonuses_id, warehouse_supplier.id, warehouse_supplier.name]
  }
}
