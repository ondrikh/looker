view: perso_control_split {
  sql_table_name: "WORKSPACE_233686783"."perso_control_split"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}."quarter" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension_group: valid_since {
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
    sql: ${TABLE}."valid_since" ;;
  }

  dimension_group: valid_till {
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
    sql: ${TABLE}."valid_till" ;;
  }

  dimension: variant {
    type: string
    sql: ${TABLE}."variant" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
