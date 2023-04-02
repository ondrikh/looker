view: actions_reporting {
  sql_table_name: "WORKSPACE_233686783"."actions_reporting"
    ;;

  dimension: action_id {
    type: string
    sql: ${TABLE}."action_id" ;;
  }

  dimension: action_length {
    type: number
    sql: ${TABLE}."action_length" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."amount" ;;
  }

  dimension: availability {
    type: number
    sql: ${TABLE}."availability" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: ends {
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
    sql: ${TABLE}."ends_at" ;;
  }

  dimension: previous_action_count {
    type: number
    sql: ${TABLE}."previous_action_count" ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."product_id" ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}."sales" ;;
  }

  dimension: sales_adj {
    type: number
    sql: ${TABLE}."sales_adj" ;;
  }

  dimension: sales_estimated {
    type: number
    sql: ${TABLE}."sales_estimated" ;;
  }

  dimension_group: started {
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
    sql: ${TABLE}."started_at" ;;
  }

  dimension: suspicious_amount {
    type: number
    sql: ${TABLE}."suspicious_amount" ;;
  }

  dimension: warehouse_inventory_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."warehouse_inventory_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      product.name,
      product.l2_category_name,
      product.product_family_name,
      product.l4_category_name,
      product.id,
      product.l5_category_name,
      product.l1_category_name,
      product.l3_category_name,
      warehouse_inventory.warehouse_name,
      warehouse_inventory.id,
      warehouse_inventory.country_of_origin_name,
      warehouse_inventory.primary_supplier_name
    ]
  }
}
