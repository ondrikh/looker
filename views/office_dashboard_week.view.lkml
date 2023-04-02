# The name of this view in Looker is "Office Dashboard Week"
view: office_dashboard_week {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: rohlik_prod.office_dashboard_week ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Affecting Replacements" in Explore.

  dimension: affecting_replacements {
    type: number
    sql: ${TABLE}.affecting_replacements ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: data_group {
    type: string
    sql: ${TABLE}.DATA_GROUP ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: data_refreshed {
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
    sql: ${TABLE}.data_refreshed ;;
  }

  dimension: date_char {
    type: string
    sql: ${TABLE}.DATE_CHAR ;;
  }

  dimension: delay {
    type: number
    sql: ${TABLE}.delay ;;
  }

  dimension: delayed_orders {
    type: number
    sql: ${TABLE}.delayed_orders ;;
  }

  dimension: delayed_orders_pct {
    type: number
    sql: ${TABLE}.delayed_orders_pct ;;
  }

  dimension: finished_orders {
    type: number
    sql: ${TABLE}.finished_orders ;;
  }

  dimension: green_rating {
    type: number
    sql: ${TABLE}.green_rating ;;
  }

  dimension: is_first_order {
    type: number
    sql: ${TABLE}.IS_FIRST_ORDER ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}.orders ;;
  }

  dimension: orders_delay_base {
    type: number
    sql: ${TABLE}.orders_delay_base ;;
  }

  dimension: perfect_order {
    type: number
    sql: ${TABLE}.PERFECT_ORDER ;;
  }

  dimension: pocet_sku {
    type: number
    sql: ${TABLE}.pocet_sku ;;
  }

  dimension: slot_unavailability {
    type: number
    sql: ${TABLE}.slot_unavailability ;;
  }

  dimension: total_price {
    type: number
    sql: ${TABLE}.total_price ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
