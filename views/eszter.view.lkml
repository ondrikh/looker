view: eszter {
  sql_table_name: "WORKSPACE_233686783"."eszter"
    ;;

  dimension: competitor {
    type: string
    sql: ${TABLE}."competitor" ;;
  }

  dimension: competitor_product_name {
    type: string
    sql: ${TABLE}."competitor_product_name" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: rohlik_product_name {
    type: string
    sql: ${TABLE}."rohlik_product_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [rohlik_product_name, competitor_product_name]
  }
}
