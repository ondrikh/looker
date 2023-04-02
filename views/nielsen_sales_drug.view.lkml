view: nielsen_sales_drug {
  sql_table_name: "WORKSPACE_233686783"."nielsen_sales_drug"
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."category" ;;
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

  dimension: hyper_category {
    type: string
    sql: ${TABLE}."hyper_category" ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}."manufacturer" ;;
  }

  dimension: market {
    type: string
    sql: ${TABLE}."market" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}."period" ;;
  }

  dimension: price_per_item {
    type: number
    sql: ${TABLE}."price_per_item" ;;
  }

  dimension: sales_items {
    type: number
    sql: ${TABLE}."sales_items" ;;
  }

  dimension: sales_value {
    type: number
    sql: ${TABLE}."sales_value" ;;
  }

  dimension: sales_volume {
    type: number
    sql: ${TABLE}."sales_volume" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
