view: commercial_bonuses_periods {
  sql_table_name: "WORKSPACE_233686783"."commercial_bonuses_periods"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."amount" ;;
  }

  dimension: best_guess {
    type: string
    sql: ${TABLE}."best_guess" ;;
  }

  dimension: billing_interval {
    type: string
    sql: ${TABLE}."billing_interval" ;;
  }

  dimension: billing_type {
    type: string
    sql: ${TABLE}."billing_type" ;;
  }

  dimension: commercial_bonus_id {
    type: string
    sql: ${TABLE}."commercial_bonus_id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}."created_at" ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}."created_by" ;;
  }

  dimension: currency_id {
    type: string
    sql: ${TABLE}."currency_id" ;;
  }

  dimension_group: date_from {
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
    sql: ${TABLE}."date_from" ;;
  }

  dimension_group: date_to {
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
    sql: ${TABLE}."date_to" ;;
  }

  dimension: deleted {
    type: string
    sql: ${TABLE}."deleted" ;;
  }

  dimension: required_amount {
    type: number
    sql: ${TABLE}."required_amount" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, commercial_bonuses_inventory_associations.count]
  }
}
