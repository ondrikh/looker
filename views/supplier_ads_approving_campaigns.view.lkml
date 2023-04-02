view: supplier_ads_approving_campaigns {
  sql_table_name: "WORKSPACE_233686783"."supplier_ads_approving_campaigns"
    ;;

  dimension: approved_campaigns {
    type: number
    sql: ${TABLE}."approved_campaigns" ;;
  }

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

  dimension: media_format {
    type: string
    sql: ${TABLE}."media_format" ;;
  }

  dimension: pending_approval_campaigns {
    type: number
    sql: ${TABLE}."pending_approval_campaigns" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
