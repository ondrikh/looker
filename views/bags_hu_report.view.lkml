view: bags_hu_report {
  sql_table_name: "WORKSPACE_233686783"."bags_hu_report"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cooled_bags {
    type: number
    sql: ${TABLE}."cooled_bags" ;;
  }

  dimension: cooled_bags_pred {
    type: number
    sql: ${TABLE}."cooled_bags_pred" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: deliver {
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
    sql: ${TABLE}."deliver_at" ;;
  }

  dimension: dry_bags {
    type: number
    sql: ${TABLE}."dry_bags" ;;
  }

  dimension: dry_bags_pred {
    type: number
    sql: ${TABLE}."dry_bags_pred" ;;
  }

  dimension: frozen_bags {
    type: number
    sql: ${TABLE}."frozen_bags" ;;
  }

  dimension: frozen_bags_pred {
    type: number
    sql: ${TABLE}."frozen_bags_pred" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
