view: wapi_crate_audit {
  sql_table_name: "WORKSPACE_233686783"."wapi_crate_audit"
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

  dimension: expected_weight {
    type: number
    sql: ${TABLE}."expected_weight" ;;
  }

  dimension: expected_weight_lower_limit {
    type: number
    sql: ${TABLE}."expected_weight_lower_limit" ;;
  }

  dimension: expected_weight_upper_limit {
    type: number
    sql: ${TABLE}."expected_weight_upper_limit" ;;
  }

  dimension: invalidated {
    type: string
    sql: ${TABLE}."invalidated" ;;
  }

  dimension_group: marked {
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
    sql: ${TABLE}."marked_at" ;;
  }

  dimension: marking_time_sec {
    type: number
    sql: ${TABLE}."marking_time_sec" ;;
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

  dimension_group: released {
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
    sql: ${TABLE}."released_at" ;;
  }

  dimension: releasing_time_sec {
    type: number
    sql: ${TABLE}."releasing_time_sec" ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}."sector" ;;
  }

  dimension_group: sorted {
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
    sql: ${TABLE}."sorted_at" ;;
  }

  dimension: sorting_table_name {
    type: string
    sql: ${TABLE}."sorting_table_name" ;;
  }

  dimension: sorting_time_sec {
    type: number
    sql: ${TABLE}."sorting_time_sec" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: wapi_pipeline_id {
    type: string
    sql: ${TABLE}."wapi_pipeline_id" ;;
  }

  dimension: wapi_pipeline_unique_id {
    type: string
    sql: ${TABLE}."wapi_pipeline_unique_id" ;;
  }

  dimension: weighted_weight {
    type: number
    sql: ${TABLE}."weighted_weight" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      sorting_table_name,
      order.courier_name,
      order.warehouse_name,
      order.delivery_point_name,
      order.id
    ]
  }
}
