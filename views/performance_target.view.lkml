view: performance_target {
  sql_table_name: "WORKSPACE_233686783"."performance_target"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: measured_type {
    type: string
    sql: ${TABLE}."measured_type" ;;
  }

  dimension: section {
    type: string
    sql: ${TABLE}."section" ;;
  }

  dimension: sector_pipeline_unique_id {
    type: string
    sql: ${TABLE}."sector_pipeline_unique_id" ;;
  }

  dimension: sector_pipiline {
    type: string
    sql: ${TABLE}."sector_pipiline" ;;
  }

  dimension: target_30_min {
    type: number
    sql: ${TABLE}."target_30_min" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
