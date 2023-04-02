view: lm_pilot_report {
  sql_table_name: "WORKSPACE_233686783"."lm_pilot_report"
    ;;

  dimension: amount_at_the_beginning_of_lm {
    type: number
    sql: ${TABLE}."amount_at_the_beginning_of_lm" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: durability_days {
    type: number
    sql: ${TABLE}."durability_days" ;;
  }

  dimension_group: expires {
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
    sql: ${TABLE}."expires_at" ;;
  }

  dimension: hypothetical_nr {
    type: number
    sql: ${TABLE}."hypothetical_NR" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: lm_model {
    type: string
    sql: ${TABLE}."lm_model" ;;
  }

  dimension: nr_fraction {
    type: number
    sql: ${TABLE}."NR_fraction" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: real_nr {
    type: number
    sql: ${TABLE}."real_NR" ;;
  }

  dimension: remaining_amount_at_the_end_of_lm {
    type: number
    sql: ${TABLE}."remaining_amount_at_the_end_of_lm" ;;
  }

  dimension: shrink_fraction {
    type: number
    sql: ${TABLE}."shrink_fraction" ;;
  }

  dimension: shrink_sum_amount {
    type: number
    sql: ${TABLE}."shrink_sum_amount" ;;
  }

  dimension: shrink_sum_gross_value {
    type: number
    sql: ${TABLE}."shrink_sum_gross_value" ;;
  }

  dimension: shrink_sum_net_value {
    type: number
    sql: ${TABLE}."shrink_sum_net_value" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."warehouse_inventory_unique_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name, l1_category_name, warehouse_name]
  }
}
