# The name of this view in Looker is "Promo Base Forecast"
view: promo_base_forecast {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: rohlik_prod.promo_base_forecast ;;
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

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Forecast" in Explore.

  dimension: forecast {
    type: number
    sql: ${TABLE}.forecast ;;
  }

  dimension: forecast_weight {
    type: number
    sql: ${TABLE}.forecast_weight ;;
  }

  dimension: warehouse_inventory_id {
    type: number
    sql: ${TABLE}.warehouse_inventory_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
