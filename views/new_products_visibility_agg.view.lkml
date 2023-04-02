view: new_products_visibility_agg {
  sql_table_name: "WORKSPACE_233686783"."new_products_visibility_agg"
    ;;

  dimension: ab_test {
    type: string
    sql: ${TABLE}."ab_test" ;;
  }

  dimension: celkovy {
    type: string
    sql: ${TABLE}."celkovy" ;;
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

  dimension: new_items {
    type: string
    sql: ${TABLE}."new_items" ;;
  }

  dimension: new_prod_after_t8 {
    type: string
    sql: ${TABLE}."new_prod_after_t8" ;;
  }

  dimension: nove_prod3 {
    type: string
    sql: ${TABLE}."nove_prod3" ;;
  }

  dimension: percentage {
    type: string
    sql: ${TABLE}."percentage" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: search_with_new_prod {
    type: string
    sql: ${TABLE}."search_with_new_prod" ;;
  }

  dimension: total_c {
    type: string
    sql: ${TABLE}."total_c" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
