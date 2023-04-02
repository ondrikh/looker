view: checkout_oneclick {
  sql_table_name: "WORKSPACE_233686783"."checkout_oneclick"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: event {
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
    sql: ${TABLE}."event_date" ;;
  }

  dimension_group: event_datetime {
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
    sql: ${TABLE}."event_datetime" ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}."event_name" ;;
  }

  dimension: event_parameter {
    type: string
    sql: ${TABLE}."event_parameter" ;;
  }

  dimension: event_parameter_value {
    type: string
    sql: ${TABLE}."event_parameter_value" ;;
  }

  dimension: operating_system {
    type: string
    sql: ${TABLE}."operating_system" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."order_id" ;;
  }

  dimension: order_unique_id {
    type: string
    sql: ${TABLE}."order_unique_id" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}."version" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      event_name,
      order.courier_name,
      order.warehouse_name,
      order.delivery_point_name,
      order.id,
      user.id
    ]
  }
}
