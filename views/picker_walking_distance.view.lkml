view: picker_walking_distance {
  sql_table_name: "WORKSPACE_233686783"."picker_walking_distance"
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

  dimension: number_of_steps {
    type: number
    sql: ${TABLE}."number_of_steps" ;;
  }

  dimension: performance {
    type: number
    sql: ${TABLE}."performance" ;;
  }

  dimension: picked_orderlines {
    type: number
    sql: ${TABLE}."picked_orderlines" ;;
  }

  dimension: picking_sector {
    type: string
    sql: ${TABLE}."picking_sector" ;;
  }

  dimension: spent_time_in_sec {
    type: number
    sql: ${TABLE}."spent_time_in_sec" ;;
  }

  dimension: store_unique_id {
    type: string
    sql: ${TABLE}."store_unique_id" ;;
  }

  dimension: walked_distance {
    type: number
    sql: ${TABLE}."walked_distance" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
