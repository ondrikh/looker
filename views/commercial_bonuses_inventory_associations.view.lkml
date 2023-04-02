view: commercial_bonuses_inventory_associations {
  sql_table_name: "WORKSPACE_233686783"."commercial_bonuses_inventory_associations"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: commercial_bonuses_periods_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."commercial_bonuses_periods_id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: warehouse_inventory_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."warehouse_inventory_id" ;;
  }

  dimension: warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."warehouse_inventory_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      commercial_bonuses_periods.id,
      warehouse_inventory.warehouse_name,
      warehouse_inventory.id,
      warehouse_inventory.country_of_origin_name,
      warehouse_inventory.primary_supplier_name
    ]
  }
}
