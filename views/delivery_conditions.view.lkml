view: delivery_conditions {
  sql_table_name: "WORKSPACE_233686783"."delivery_conditions"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}."create_date" ;;
  }

  dimension: days_coverage {
    type: string
    sql: ${TABLE}."days_coverage" ;;
  }

  dimension_group: deliver {
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
    sql: ${TABLE}."deliver_at" ;;
  }

  dimension: delivery_frequency {
    type: number
    sql: ${TABLE}."delivery_frequency" ;;
  }

  dimension: durability_days {
    type: string
    sql: ${TABLE}."durability_days" ;;
  }

  dimension: durability_days_w_buffer {
    type: number
    sql: ${TABLE}."durability_days_w_buffer" ;;
  }

  dimension: grocery_unique_id {
    type: string
    sql: ${TABLE}."grocery_unique_id" ;;
  }

  dimension: has_durability {
    type: string
    sql: ${TABLE}."has_durability" ;;
  }

  dimension: has_template {
    type: string
    sql: ${TABLE}."has_template" ;;
  }

  dimension: is_autosend {
    type: string
    sql: ${TABLE}."is_autosend" ;;
  }

  dimension: l1_category_name {
    type: string
    sql: ${TABLE}."L1_category_name" ;;
  }

  dimension: l2_category_name {
    type: string
    sql: ${TABLE}."L2_category_name" ;;
  }

  dimension: l3_category_name {
    type: string
    sql: ${TABLE}."L3_category_name" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."order_id" ;;
  }

  dimension: responsible_disponent {
    type: string
    sql: ${TABLE}."responsible_disponent" ;;
  }

  dimension: seasonal_sku {
    type: string
    sql: ${TABLE}."seasonal_sku" ;;
  }

  dimension: template_id {
    type: string
    sql: ${TABLE}."template_id" ;;
  }

  dimension: top_20 {
    type: string
    sql: ${TABLE}."TOP_20" ;;
  }

  dimension: top_5 {
    type: string
    sql: ${TABLE}."TOP_5" ;;
  }

  dimension: warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."warehouse_inventory_unique_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      name,
      warehouse_name,
      l1_category_name,
      l3_category_name,
      l2_category_name,
      order.courier_name,
      order.warehouse_name,
      order.delivery_point_name,
      order.id
    ]
  }
}
