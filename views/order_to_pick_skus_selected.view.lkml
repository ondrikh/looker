view: order_to_pick_skus_selected {
  sql_table_name: "WORKSPACE_233686783"."order_to_pick_skus_selected"
    ;;

  dimension: face_actual_back_then {
    type: string
    sql: ${TABLE}."face_actual_back_then" ;;
  }

  dimension: face_optimal_back_then {
    type: string
    sql: ${TABLE}."face_optimal_back_then" ;;
  }

  dimension: warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."warehouse_inventory_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
