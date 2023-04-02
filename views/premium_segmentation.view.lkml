view: premium_segmentation {
  sql_table_name: "WORKSPACE_233686783"."premium_segmentation"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: premium_type {
    type: string
    sql: ${TABLE}."premium_type" ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}."segment" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: week {
    type: string
    sql: ${TABLE}."week" ;;
  }

  measure: count {
    type: count
    drill_fields: [user.id]
  }
}
