view: warehouse_replacement_with_ticket {
  sql_table_name: "WORKSPACE_233686783"."warehouse_replacement_with_ticket"
    ;;

  dimension: call_customer_id {
    type: string
    sql: ${TABLE}."call_customer_id" ;;
  }

  dimension: call_id {
    type: string
    sql: ${TABLE}."call_id" ;;
  }

  dimension_group: call {
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
    sql: ${TABLE}."call_time" ;;
  }

  dimension_group: created_date_replacement_and_ticket {
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
    sql: ${TABLE}."created_date_replacement_and_ticket" ;;
  }

  dimension_group: deliver {
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
    sql: ${TABLE}."deliver_at" ;;
  }

  dimension: fetched_by_unique_id {
    type: string
    sql: ${TABLE}."fetched_by_unique_id" ;;
  }

  dimension: fetched_by_user {
    type: string
    sql: ${TABLE}."fetched_by_user" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."order_id" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension_group: replacement_created {
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
    sql: ${TABLE}."replacement_created_at" ;;
  }

  dimension: replacement_original_warehouse_inventory_id {
    type: string
    sql: ${TABLE}."replacement_original_warehouse_inventory_id" ;;
  }

  dimension: replacement_original_warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."replacement_original_warehouse_inventory_unique_id" ;;
  }

  dimension: replacement_reason {
    type: string
    sql: ${TABLE}."replacement_reason" ;;
  }

  dimension_group: replacement_solved {
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
    sql: ${TABLE}."replacement_solved_at" ;;
  }

  dimension: replacement_solving_type {
    type: string
    sql: ${TABLE}."replacement_solving_type" ;;
  }

  dimension: replacement_state {
    type: string
    sql: ${TABLE}."replacement_state" ;;
  }

  dimension: ticket_result {
    type: string
    sql: ${TABLE}."ticket_result" ;;
  }

  dimension: unwanted_claim_in_order {
    type: string
    sql: ${TABLE}."unwanted_claim_in_order" ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}."user" ;;
  }

  measure: count {
    type: count
    drill_fields: [order.courier_name, order.warehouse_name, order.delivery_point_name, order.id]
  }
}
