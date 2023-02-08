# The name of this view in Looker is "Product Bag Types Actual"
view: product_bag_types_actual {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: rohlik_prod.product_bag_types_actual ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _last_modified {
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
    sql: ${TABLE}._last_modified_at ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bottle" in Explore.

  dimension: bottle {
    type: number
    sql: ${TABLE}.bottle ;;
  }

  dimension: extra_bag {
    type: number
    sql: ${TABLE}.extra_bag ;;
  }

  dimension: fixed_bag_count {
    type: number
    sql: ${TABLE}.fixed_bag_count ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: large_item {
    type: number
    sql: ${TABLE}.large_item ;;
  }

  dimension: pick_to_bags {
    type: number
    sql: ${TABLE}.pick_to_bags ;;
  }

  dimension: stacking_bags {
    type: number
    sql: ${TABLE}.stacking_bags ;;
  }

  dimension: stacking_packages {
    type: number
    sql: ${TABLE}.stacking_packages ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: volume {
    type: number
    sql: ${TABLE}.volume ;;
  }

  dimension: warehouse_id {
    type: number
    sql: ${TABLE}.warehouse_id ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
