view: order_origin {
  sql_table_name: "WORKSPACE_233686783"."order_origin"
    ;;

  dimension: master_order_unique_id {
    type: string
    sql: ${TABLE}."master_order_unique_id" ;;
  }

  dimension: web_all_picked_items {
    type: string
    sql: ${TABLE}."web_all_picked_items" ;;
  }

  dimension: web_finished_order {
    type: string
    sql: ${TABLE}."web_finished_order" ;;
  }

  dimension: web_picked_item {
    type: string
    sql: ${TABLE}."web_picked_item" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
