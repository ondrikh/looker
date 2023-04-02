view: mobile_exits {
  sql_table_name: "WORKSPACE_233686783"."mobile_exits"
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

  dimension: event_name {
    type: string
    sql: ${TABLE}."event_name" ;;
  }

  dimension: firebase_screen {
    type: string
    sql: ${TABLE}."firebase_screen" ;;
  }

  dimension: firebase_screen_class {
    type: string
    sql: ${TABLE}."firebase_screen_class" ;;
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

  dimension_group: time {
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
    sql: ${TABLE}."time" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}."user_pseudo_id" ;;
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
