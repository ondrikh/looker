view: user_retention {
  sql_table_name: "WORKSPACE_233686783"."user_retention"
    ;;

  dimension: control_group {
    type: string
    sql: ${TABLE}."control_group" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: current_status {
    type: string
    sql: ${TABLE}."current_status" ;;
  }

  dimension: new_funnel {
    type: string
    sql: ${TABLE}."new_funnel" ;;
  }

  dimension_group: new_funnel {
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
    sql: ${TABLE}."new_funnel_date" ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}."orders" ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}."snapshot_date" ;;
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

  measure: count {
    type: count
    drill_fields: [user.id]
  }
}
