view: penetrations_supplier_level {
  sql_table_name: "WORKSPACE_233686783"."penetrations_supplier_level"
    ;;

  dimension: basket_penetration_supplier {
    type: number
    sql: ${TABLE}."basket_penetration_supplier" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: customer_penetration_supplier {
    type: number
    sql: ${TABLE}."customer_penetration_supplier" ;;
  }

  dimension_group: eom {
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
    sql: ${TABLE}."EOM" ;;
  }

  dimension: id_orders {
    type: string
    sql: ${TABLE}."id_orders" ;;
  }

  dimension: id_users {
    type: string
    sql: ${TABLE}."id_users" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  dimension: supplier_unique_id {
    type: string
    sql: ${TABLE}."supplier_unique_id" ;;
  }

  dimension: total_orders {
    type: number
    sql: ${TABLE}."total_orders" ;;
  }

  dimension: total_users {
    type: number
    sql: ${TABLE}."total_users" ;;
  }

  measure: count {
    type: count
    drill_fields: [supplier_name]
  }
}
