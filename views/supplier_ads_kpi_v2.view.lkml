view: supplier_ads_kpi_v2 {
  sql_table_name: "WORKSPACE_233686783"."supplier_ads_kpi_v2"
    ;;

  dimension: average_budget {
    type: number
    sql: ${TABLE}."average_budget" ;;
  }

  dimension: burned_campaigns {
    type: number
    sql: ${TABLE}."burned_campaigns" ;;
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
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."date" ;;
  }

  dimension: number_campaigns {
    type: number
    sql: ${TABLE}."number_campaigns" ;;
  }

  dimension: paid_be_impression {
    type: number
    sql: ${TABLE}."paid_be_impression" ;;
  }

  dimension: paid_request {
    type: number
    sql: ${TABLE}."paid_request" ;;
  }

  dimension: roas_campaigns {
    type: number
    sql: ${TABLE}."roas_campaigns" ;;
  }

  dimension: sp_be_impression {
    type: number
    sql: ${TABLE}."sp_be_impression" ;;
  }

  dimension: sp_request {
    type: number
    sql: ${TABLE}."sp_request" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
