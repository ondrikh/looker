view: bags_reporting_new {
  sql_table_name: "WORKSPACE_233686783"."bags_reporting_new"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: cooled_bags {
    type: number
    sql: ${TABLE}."cooled_bags" ;;
  }

  dimension: cooled_pred {
    type: number
    sql: ${TABLE}."cooled_pred" ;;
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

  dimension: dry_pred {
    type: number
    sql: ${TABLE}."dry_pred" ;;
  }

  dimension: final_route_id {
    type: string
    sql: ${TABLE}."final_route_id" ;;
  }

  dimension: frozen_bags {
    type: number
    sql: ${TABLE}."frozen_bags" ;;
  }

  dimension: frozen_pred {
    type: number
    sql: ${TABLE}."frozen_pred" ;;
  }

  dimension: pharmacy_bags {
    type: number
    sql: ${TABLE}."pharmacy_bags" ;;
  }

  dimension: pharmacy_pred {
    type: number
    sql: ${TABLE}."pharmacy_pred" ;;
  }

  dimension: reusable {
    type: string
    sql: ${TABLE}."reusable" ;;
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

  dimension: valuable_bags {
    type: number
    sql: ${TABLE}."valuable_bags" ;;
  }

  dimension: valuable_pred {
    type: number
    sql: ${TABLE}."valuable_pred" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, warehouse_name]
  }
}
