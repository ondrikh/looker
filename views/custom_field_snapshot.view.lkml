view: custom_field_snapshot {
  sql_table_name: "WORKSPACE_233686783"."custom_field_snapshot"
    ;;

  dimension: arpu_level {
    type: string
    sql: ${TABLE}."arpu_level" ;;
  }

  dimension: avg_price_tier {
    type: number
    sql: ${TABLE}."avg_price_tier" ;;
  }

  dimension: churn_probability {
    type: string
    sql: ${TABLE}."churn_probability" ;;
  }

  dimension: control_group {
    type: string
    sql: ${TABLE}."control_group" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: main_funnel {
    type: string
    sql: ${TABLE}."main_funnel" ;;
  }

  dimension: sale_spend {
    type: number
    sql: ${TABLE}."sale_spend" ;;
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

  measure: count {
    type: count
    drill_fields: [user.id]
  }
}
