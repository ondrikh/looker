view: order_to_pick_snapshot {
  sql_table_name: "WORKSPACE_233686783"."order_to_pick_snapshot"
    ;;

  dimension: abc_split {
    type: string
    sql: ${TABLE}."abc_split" ;;
  }

  dimension: face_actual {
    type: string
    sql: ${TABLE}."face_actual" ;;
  }

  dimension: face_optimal {
    type: string
    sql: ${TABLE}."face_optimal" ;;
  }

  dimension: flow_type {
    type: string
    sql: ${TABLE}."flow_type" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: replenishments_last_30d {
    type: number
    sql: ${TABLE}."replenishments_last_30d" ;;
  }

  dimension: replenishments_last_7d {
    type: number
    sql: ${TABLE}."replenishments_last_7d" ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}."sector" ;;
  }

  dimension: sku_count {
    type: number
    sql: ${TABLE}."sku_count" ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}."snapshot_date" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [warehouse_name, l1_category_name]
  }
}
