view: bags_reporting {
  sql_table_name: "WORKSPACE_233686783"."bags_reporting"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: bags {
    type: number
    sql: ${TABLE}."bags" ;;
  }

  dimension: cooled_bags {
    type: number
    sql: ${TABLE}."cooled_bags" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: delayed_bags {
    type: number
    sql: ${TABLE}."delayed_bags" ;;
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

  dimension: dry_with_pharm_bags {
    type: number
    sql: ${TABLE}."dry_with_pharm_bags" ;;
  }

  dimension: dry_wo_pharm_bags {
    type: number
    sql: ${TABLE}."dry_wo_pharm_bags" ;;
  }

  dimension: extra_bags {
    type: number
    sql: ${TABLE}."extra_bags" ;;
  }

  dimension: final_route_id {
    type: string
    sql: ${TABLE}."final_route_id" ;;
  }

  dimension: frozen_bags {
    type: number
    sql: ${TABLE}."frozen_bags" ;;
  }

  dimension: inference_cooled {
    type: number
    sql: ${TABLE}."inference_cooled" ;;
  }

  dimension: inference_dry {
    type: number
    sql: ${TABLE}."inference_dry" ;;
  }

  dimension: inference_frozen {
    type: number
    sql: ${TABLE}."inference_frozen" ;;
  }

  dimension: is_asap {
    type: string
    sql: ${TABLE}."is_asap" ;;
  }

  dimension: old_cooled {
    type: number
    sql: ${TABLE}."old_cooled" ;;
  }

  dimension: old_dry {
    type: number
    sql: ${TABLE}."old_dry" ;;
  }

  dimension: old_frozen {
    type: number
    sql: ${TABLE}."old_frozen" ;;
  }

  dimension: pharmacy_bags {
    type: number
    sql: ${TABLE}."pharmacy_bags" ;;
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

  dimension: valuable_bags {
    type: number
    sql: ${TABLE}."valuable_bags" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: zone_city {
    type: string
    sql: ${TABLE}."zone_city" ;;
  }

  dimension: zone_region {
    type: string
    sql: ${TABLE}."zone_region" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
