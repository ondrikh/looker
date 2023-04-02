view: personalization_backup_history_long {
  sql_table_name: "WORKSPACE_233686783"."personalization_backup_history_long"
    ;;

  dimension: component {
    type: string
    sql: ${TABLE}."component" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: sub_variant {
    type: string
    sql: ${TABLE}."sub_variant" ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}."timestamp" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
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
