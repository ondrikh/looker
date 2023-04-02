view: unpicked_reservation {
  sql_table_name: "WORKSPACE_233686783"."unpicked_reservation"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: deliver_to_customer {
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
    sql: ${TABLE}."deliver_to_customer_at" ;;
  }

  dimension: inventory_id {
    type: string
    sql: ${TABLE}."inventory_id" ;;
  }

  dimension: inventory_unique_id {
    type: string
    sql: ${TABLE}."inventory_unique_id" ;;
  }

  dimension: unpicked_reservation {
    type: number
    sql: ${TABLE}."unpicked_reservation" ;;
  }

  dimension: unpicked_reservation_weight {
    type: number
    sql: ${TABLE}."unpicked_reservation_weight" ;;
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
