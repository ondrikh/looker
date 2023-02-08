# The name of this view in Looker is "Multiprocessing Test"
view: multiprocessing_test {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: rohlik_prod.multiprocessing_test ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Action ID" in Explore.

  dimension: action_id {
    type: number
    sql: ${TABLE}.action_id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: amount_w_delta {
    type: number
    sql: ${TABLE}.amount_w_delta ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: dispo {
    type: number
    sql: ${TABLE}.dispo ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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
    sql: ${TABLE}.ends_at ;;
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
    sql: ${TABLE}.expires_at ;;
  }

  dimension: grocery_id {
    type: number
    sql: ${TABLE}.grocery_id ;;
  }

  dimension: inventory_item_id {
    type: number
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: original_price {
    type: number
    sql: ${TABLE}.original_price ;;
  }

  dimension: original_semi_caliber_price_per_kg {
    type: number
    sql: ${TABLE}.original_semi_caliber_price_per_kg ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: remaining {
    type: number
    sql: ${TABLE}.remaining ;;
  }

  dimension: remaining_x_original_price {
    type: number
    sql: ${TABLE}.remaining_X_original_price ;;
  }

  dimension: sale {
    type: number
    sql: ${TABLE}.sale ;;
  }

  dimension: semi_caliber_price_per_kg {
    type: number
    sql: ${TABLE}.semi_caliber_price_per_kg ;;
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
    sql: ${TABLE}.started_at ;;
  }

  dimension: supplier {
    type: string
    sql: ${TABLE}.supplier ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: unit_coefficient {
    type: number
    sql: ${TABLE}.unit_coefficient ;;
  }

  dimension: warehouse_id {
    type: number
    sql: ${TABLE}.warehouse_id ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
