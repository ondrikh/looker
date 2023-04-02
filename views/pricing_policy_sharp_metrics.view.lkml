view: pricing_policy_sharp_metrics {
  sql_table_name: "WORKSPACE_233686783"."pricing_policy_sharp_metrics"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: number_of_skus_with_wrong_price {
    type: number
    sql: ${TABLE}."number_of_SKUs_with_wrong_price" ;;
  }

  dimension: pi_kvis {
    type: number
    sql: ${TABLE}."PI_KVIs" ;;
  }

  dimension: pi_pg1 {
    type: number
    sql: ${TABLE}."PI_PG1" ;;
  }

  dimension: pi_pg2 {
    type: number
    sql: ${TABLE}."PI_PG2" ;;
  }

  dimension: pi_pg3 {
    type: number
    sql: ${TABLE}."PI_PG3" ;;
  }

  dimension: pi_pg4 {
    type: number
    sql: ${TABLE}."PI_PG4" ;;
  }

  dimension: pr_kvis {
    type: number
    sql: ${TABLE}."PR_KVIs" ;;
  }

  dimension: pr_pg1 {
    type: number
    sql: ${TABLE}."PR_PG1" ;;
  }

  dimension: pr_pg2 {
    type: number
    sql: ${TABLE}."PR_PG2" ;;
  }

  dimension: pr_pg3 {
    type: number
    sql: ${TABLE}."PR_PG3" ;;
  }

  dimension: pr_pg4 {
    type: number
    sql: ${TABLE}."PR_PG4" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
