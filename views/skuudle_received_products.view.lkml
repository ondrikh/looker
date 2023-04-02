view: skuudle_received_products {
  sql_table_name: "WORKSPACE_233686783"."skuudle_received_products"
    ;;

  dimension: competitor {
    type: string
    sql: ${TABLE}."competitor" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date_collected {
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
    sql: ${TABLE}."date_collected" ;;
  }

  dimension: received_number_of_products {
    type: number
    sql: ${TABLE}."received_number_of_products" ;;
  }

  dimension: report {
    type: string
    sql: ${TABLE}."report" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
