view: delivery_conditions_future {
  sql_table_name: "WORKSPACE_233686783"."delivery_conditions_future"
    ;;

  dimension: abc_split {
    type: string
    sql: ${TABLE}."abc_split" ;;
  }

  dimension: available_and_enabled_hours {
    type: number
    sql: ${TABLE}."available_and_enabled_hours" ;;
  }

  dimension: category_tag_dry_fresh {
    type: string
    sql: ${TABLE}."category_tag_dry_fresh" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date_delivery {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."date_delivery" ;;
  }

  dimension: days_till_next_delivery {
    type: number
    sql: ${TABLE}."days_till_next_delivery" ;;
  }

  dimension: days_till_next_delivery_sku {
    type: number
    sql: ${TABLE}."days_till_next_delivery_sku" ;;
  }

  dimension: durability_days {
    type: number
    sql: ${TABLE}."durability_days" ;;
  }

  dimension: enabled_hours {
    type: number
    sql: ${TABLE}."enabled_hours" ;;
  }

  dimension: is_autosend {
    type: string
    sql: ${TABLE}."is_autosend" ;;
  }

  dimension_group: next_delivery {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."next_delivery_date" ;;
  }

  dimension_group: next_delivery_date_sku {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."next_delivery_date_sku" ;;
  }

  dimension: order_days {
    type: number
    sql: ${TABLE}."order_days" ;;
  }

  dimension: private_brand_sku {
    type: string
    sql: ${TABLE}."private_brand_sku" ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."product_id" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product_name" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: responsible_disponent {
    type: string
    sql: ${TABLE}."responsible_disponent" ;;
  }

  dimension: template_unique_id {
    type: string
    sql: ${TABLE}."template_unique_id" ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      product_name,
      warehouse_name,
      product.name,
      product.l2_category_name,
      product.product_family_name,
      product.l4_category_name,
      product.id,
      product.l5_category_name,
      product.l1_category_name,
      product.l3_category_name
    ]
  }
}
