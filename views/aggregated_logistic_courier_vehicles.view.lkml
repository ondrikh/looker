view: aggregated_logistic_courier_vehicles {
  sql_table_name: "WORKSPACE_233686783"."aggregated_logistic_courier_vehicles"
    ;;

  dimension: car_name {
    type: string
    sql: ${TABLE}."car_name" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: courier_id {
    type: string
    sql: ${TABLE}."courier_id" ;;
  }

  dimension: courier_name {
    type: string
    sql: ${TABLE}."courier_name" ;;
  }

  dimension: day_of_logged_in {
    type: string
    sql: ${TABLE}."day_of_logged_in" ;;
  }

  dimension_group: logged_in {
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
    sql: ${TABLE}."logged_in" ;;
  }

  dimension: month_of_logged_in {
    type: string
    sql: ${TABLE}."month_of_logged_in" ;;
  }

  dimension: registration_number {
    type: string
    sql: ${TABLE}."registration_number" ;;
  }

  dimension: vehicle_unique_id {
    type: string
    sql: ${TABLE}."vehicle_unique_id" ;;
  }

  dimension: year_of_logged_in {
    type: string
    sql: ${TABLE}."year_of_logged_in" ;;
  }

  measure: count {
    type: count
    drill_fields: [courier_name, car_name]
  }
}
