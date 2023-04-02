view: scr_visual {
  sql_table_name: "WORKSPACE_233686783"."scr_visual"
    ;;

  dimension: add_count {
    type: number
    sql: ${TABLE}."add_count" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: search_count {
    type: number
    sql: ${TABLE}."search_count" ;;
  }

  dimension: search_term {
    type: string
    sql: ${TABLE}."search_term" ;;
  }

  dimension: tenant {
    type: string
    sql: ${TABLE}."tenant" ;;
  }

  dimension: year_month_day {
    type: string
    sql: ${TABLE}."year_month_day" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
