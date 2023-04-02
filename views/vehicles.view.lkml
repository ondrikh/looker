view: vehicles {
  sql_table_name: "WORKSPACE_233686783"."vehicles"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: brand_id {
    type: string
    sql: ${TABLE}."brand_id" ;;
  }

  dimension: brand_unique_id {
    type: string
    sql: ${TABLE}."brand_unique_id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}."currency_code" ;;
  }

  dimension: deleted {
    type: string
    sql: ${TABLE}."deleted" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: ignore_temperature {
    type: string
    sql: ${TABLE}."ignore_temperature" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: owner_dj {
    type: string
    sql: ${TABLE}."owner_dj" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."owner_id" ;;
  }

  dimension: owner_unique_id {
    type: string
    sql: ${TABLE}."owner_unique_id" ;;
  }

  dimension: private_kilometer_price {
    type: string
    sql: ${TABLE}."private_kilometer_price" ;;
  }

  dimension: registration_number {
    type: string
    sql: ${TABLE}."registration_number" ;;
  }

  dimension: sensor_id {
    type: string
    sql: ${TABLE}."sensor_id" ;;
  }

  dimension: sensor_unique_id {
    type: string
    sql: ${TABLE}."sensor_unique_id" ;;
  }

  dimension: type_id {
    type: string
    sql: ${TABLE}."type_id" ;;
  }

  dimension: type_unique_id {
    type: string
    sql: ${TABLE}."type_unique_id" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension: vehicle_state_id {
    type: string
    sql: ${TABLE}."vehicle_state_id" ;;
  }

  dimension: vehicle_state_unique_id {
    type: string
    sql: ${TABLE}."vehicle_state_unique_id" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, car_temp_measurements_alert.count, logistic_courier_vehicles.count]
  }
}
