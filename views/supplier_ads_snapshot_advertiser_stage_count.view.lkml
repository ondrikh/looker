view: supplier_ads_snapshot_advertiser_stage_count {
  sql_table_name: "WORKSPACE_233686783"."supplier_ads_snapshot_advertiser_stage_count"
    ;;

  dimension: active {
    type: number
    sql: ${TABLE}."active" ;;
  }

  dimension: eligible {
    type: number
    sql: ${TABLE}."eligible" ;;
  }

  dimension: inactive {
    type: number
    sql: ${TABLE}."inactive" ;;
  }

  dimension: prospect {
    type: number
    sql: ${TABLE}."prospect" ;;
  }

  dimension: rip {
    type: number
    sql: ${TABLE}."rip" ;;
  }

  dimension: snapshot_time {
    type: string
    sql: ${TABLE}."snapshot_time" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
