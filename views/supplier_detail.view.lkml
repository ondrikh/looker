view: supplier_detail {
  sql_table_name: "WORKSPACE_233686783"."supplier_detail"
    ;;

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: first_campaign_created {
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
    sql: ${TABLE}."first_campaign_created" ;;
  }

  dimension_group: latest_campaign_created {
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
    sql: ${TABLE}."latest_campaign_created" ;;
  }

  dimension: official_name {
    type: string
    sql: ${TABLE}."official_name" ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}."street" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: unique_warehouse_supplier_id {
    type: string
    sql: ${TABLE}."unique_warehouse_supplier_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [official_name]
  }
}
