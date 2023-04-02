view: user_orders_origin_90days {
  sql_table_name: "WORKSPACE_233686783"."user_orders_origin_90days"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date_since {
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
    sql: ${TABLE}."date_since" ;;
  }

  dimension_group: date_till {
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
    sql: ${TABLE}."date_till" ;;
  }

  dimension: gr {
    type: number
    sql: ${TABLE}."gr" ;;
  }

  dimension: nr {
    type: number
    sql: ${TABLE}."nr" ;;
  }

  dimension: orders_app {
    type: number
    sql: ${TABLE}."orders_app" ;;
  }

  dimension: orders_web {
    type: number
    sql: ${TABLE}."orders_web" ;;
  }

  dimension: orders_web_desktop {
    type: number
    sql: ${TABLE}."orders_web_desktop" ;;
  }

  dimension: orders_web_mobile {
    type: number
    sql: ${TABLE}."orders_web_mobile" ;;
  }

  dimension: total_orders {
    type: number
    sql: ${TABLE}."total_orders" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
