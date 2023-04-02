view: out_sum_nr_by_level_up3 {
  sql_table_name: "WORKSPACE_233686783"."out_sum_nr_by_level_up3"
    ;;

  dimension: l1_category_unique_id {
    type: string
    sql: ${TABLE}."L1_category_unique_id" ;;
  }

  dimension: l2_category_unique_id {
    type: string
    sql: ${TABLE}."L2_category_unique_id" ;;
  }

  dimension: l3_category_unique_id {
    type: string
    sql: ${TABLE}."L3_category_unique_id" ;;
  }

  dimension: sum_nr_last_30_by_level {
    type: number
    sql: ${TABLE}."SUM_NR_LAST_30_BY_LEVEL" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
