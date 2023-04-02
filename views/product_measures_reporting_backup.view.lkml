view: product_measures_reporting_backup {
  sql_table_name: "WORKSPACE_233686783"."product_measures_reporting_backup"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: completeness {
    type: string
    sql: ${TABLE}."completeness" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: depth {
    type: number
    sql: ${TABLE}."depth" ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}."height" ;;
  }

  dimension: l1_category_id {
    type: string
    sql: ${TABLE}."L1_category_id" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: listing_already_checked {
    type: number
    sql: ${TABLE}."listing_already_checked" ;;
  }

  dimension: listing_blacklist {
    type: number
    sql: ${TABLE}."listing_blacklist" ;;
  }

  dimension: measures_complete {
    type: number
    sql: ${TABLE}."measures_complete" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: pharmacy {
    type: number
    sql: ${TABLE}."pharmacy" ;;
  }

  dimension: pu_height {
    type: number
    sql: ${TABLE}."pu_height" ;;
  }

  dimension: pu_length {
    type: number
    sql: ${TABLE}."pu_length" ;;
  }

  dimension: pu_measures_complete {
    type: number
    sql: ${TABLE}."pu_measures_complete" ;;
  }

  dimension: pu_weight_complete {
    type: number
    sql: ${TABLE}."pu_weight_complete" ;;
  }

  dimension: pu_width {
    type: number
    sql: ${TABLE}."pu_width" ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}."snapshot_date" ;;
  }

  dimension: suspicious_measures {
    type: number
    sql: ${TABLE}."suspicious_measures" ;;
  }

  dimension: suspicious_measures2 {
    type: number
    sql: ${TABLE}."suspicious_measures2" ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}."unit" ;;
  }

  dimension: volume_ok {
    type: number
    sql: ${TABLE}."volume_ok" ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}."weight" ;;
  }

  dimension: weight_complete {
    type: number
    sql: ${TABLE}."weight_complete" ;;
  }

  dimension: weight_gross {
    type: number
    sql: ${TABLE}."weight_gross" ;;
  }

  dimension: weight_net {
    type: number
    sql: ${TABLE}."weight_net" ;;
  }

  dimension: width {
    type: number
    sql: ${TABLE}."width" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, l1_category_name]
  }
}
