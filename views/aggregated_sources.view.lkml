view: aggregated_sources {
  sql_table_name: "WORKSPACE_233686783"."aggregated_sources"
    ;;

  dimension: add_to_cart {
    type: number
    sql: ${TABLE}."add_to_cart" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."date" ;;
  }

  dimension: gr {
    type: number
    sql: ${TABLE}."gr" ;;
  }

  dimension: is_favourite {
    type: string
    sql: ${TABLE}."is_favourite" ;;
  }

  dimension: l1_category_id {
    type: string
    sql: ${TABLE}."L1_category_id" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: l1_category_name_en {
    type: string
    sql: ${TABLE}."L1_category_name_en" ;;
  }

  dimension: nr {
    type: number
    sql: ${TABLE}."nr" ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}."orders" ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}."origin" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."source" ;;
  }

  dimension: source_api_type {
    type: string
    sql: ${TABLE}."source_api_type" ;;
  }

  dimension: source_category_id {
    type: string
    sql: ${TABLE}."source_category_id" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [l1_category_name]
  }
}
