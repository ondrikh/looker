view: aggregated_availability_by_product_and_date {
  sql_table_name: "WORKSPACE_233686783"."aggregated_availability_by_product_and_date"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."date" ;;
  }

  dimension: enabled_and_available_hours {
    type: number
    sql: ${TABLE}."enabled_and_available_hours" ;;
  }

  dimension: enabled_and_available_hours_wo_delta {
    type: number
    sql: ${TABLE}."enabled_and_available_hours_wo_delta" ;;
  }

  dimension: enabled_hours {
    type: number
    sql: ${TABLE}."enabled_hours" ;;
  }

  dimension: is_autosend {
    type: string
    sql: ${TABLE}."is_autosend" ;;
  }

  dimension: kpi_enabled_and_available_hours {
    type: number
    sql: ${TABLE}."KPI_enabled_and_available_hours" ;;
  }

  dimension: kpi_enabled_and_available_hours_durab_1day {
    type: number
    sql: ${TABLE}."KPI_enabled_and_available_hours_durab_1day" ;;
  }

  dimension: kpi_enabled_and_available_hours_wo_delta {
    type: number
    sql: ${TABLE}."KPI_enabled_and_available_hours_wo_delta" ;;
  }

  dimension: kpi_enabled_hours {
    type: number
    sql: ${TABLE}."KPI_enabled_hours" ;;
  }

  dimension: kpi_enabled_hours_durab_1day {
    type: number
    sql: ${TABLE}."KPI_enabled_hours_durab_1day" ;;
  }

  dimension: late_delivery_last30d {
    type: number
    sql: ${TABLE}."late_delivery_last30d" ;;
  }

  dimension: long_term_unavailability {
    type: number
    sql: ${TABLE}."long_term_unavailability" ;;
  }

  dimension: max_amout {
    type: number
    sql: ${TABLE}."max_amout" ;;
  }

  dimension: new_product {
    type: string
    sql: ${TABLE}."new_product" ;;
  }

  dimension: new_sku {
    type: string
    sql: ${TABLE}."new_sku" ;;
  }

  dimension: non_delivery_last30d {
    type: number
    sql: ${TABLE}."non_delivery_last30d" ;;
  }

  dimension: nr {
    type: number
    sql: ${TABLE}."nr" ;;
  }

  dimension: otif_last30d {
    type: number
    sql: ${TABLE}."otif_last30d" ;;
  }

  dimension: packages {
    type: number
    sql: ${TABLE}."packages" ;;
  }

  dimension: private_brand_sku {
    type: string
    sql: ${TABLE}."private_brand_sku" ;;
  }

  dimension: promo_sku {
    type: string
    sql: ${TABLE}."promo_sku" ;;
  }

  dimension: seasonal_sku {
    type: string
    sql: ${TABLE}."seasonal_sku" ;;
  }

  dimension: top_sku {
    type: string
    sql: ${TABLE}."top_sku" ;;
  }

  dimension: warehouse_inventory_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."warehouse_inventory_id" ;;
  }

  dimension: warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."warehouse_inventory_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [warehouse_inventory.warehouse_name, warehouse_inventory.id, warehouse_inventory.country_of_origin_name, warehouse_inventory.primary_supplier_name]
  }
}
