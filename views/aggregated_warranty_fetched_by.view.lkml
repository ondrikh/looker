view: aggregated_warranty_fetched_by {
  sql_table_name: "WORKSPACE_233686783"."aggregated_warranty_fetched_by"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."date" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: fetched_by_id {
    type: string
    sql: ${TABLE}."fetched_by_id" ;;
  }

  dimension: picked_sku {
    type: number
    sql: ${TABLE}."picked_SKU" ;;
  }

  dimension: reason_cat {
    type: string
    sql: ${TABLE}."reason_cat" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [warehouse_name]
  }
}
