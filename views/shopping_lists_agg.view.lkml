view: shopping_lists_agg {
  sql_table_name: "WORKSPACE_233686783"."shopping_lists_agg"
    ;;

  dimension: buyers_mau_30days {
    type: number
    sql: ${TABLE}."buyers_mau_30days" ;;
  }

  dimension: buyers_ok_segment_60days {
    type: number
    sql: ${TABLE}."buyers_ok_segment_60days" ;;
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

  dimension: products {
    type: number
    sql: ${TABLE}."products" ;;
  }

  dimension: shopping_lists {
    type: number
    sql: ${TABLE}."shopping_lists" ;;
  }

  dimension: shopping_lists_automated {
    type: number
    sql: ${TABLE}."shopping_lists_automated" ;;
  }

  dimension: shopping_lists_manual {
    type: number
    sql: ${TABLE}."shopping_lists_manual" ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}."users" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
