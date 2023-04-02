view: adyen_pos_terminal_fleet_schedule {
  sql_table_name: "WORKSPACE_233686783"."adyen_pos_terminal_fleet_schedule"
    ;;

  dimension: bluetooth_ip {
    type: string
    sql: ${TABLE}."bluetooth_ip" ;;
  }

  dimension: bluetooth_mac {
    type: string
    sql: ${TABLE}."bluetooth_mac" ;;
  }

  dimension: boarded {
    type: string
    sql: ${TABLE}."boarded" ;;
  }

  dimension: company_account {
    type: string
    sql: ${TABLE}."company_account" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: device_model {
    type: string
    sql: ${TABLE}."device_model" ;;
  }

  dimension: device_name {
    type: string
    sql: ${TABLE}."device_name" ;;
  }

  dimension: display_label {
    type: string
    sql: ${TABLE}."display_label" ;;
  }

  dimension: ethernet_ip {
    type: string
    sql: ${TABLE}."ethernet_ip" ;;
  }

  dimension: ethernet_mac {
    type: string
    sql: ${TABLE}."ethernet_mac" ;;
  }

  dimension: iccid {
    type: string
    sql: ${TABLE}."iccid" ;;
  }

  dimension: index {
    type: string
    sql: ${TABLE}."index" ;;
  }

  dimension: last_activity {
    type: string
    sql: ${TABLE}."last_activity" ;;
  }

  dimension: last_transaction {
    type: string
    sql: ${TABLE}."last_transaction" ;;
  }

  dimension: link_negotiation {
    type: string
    sql: ${TABLE}."link_negotiation" ;;
  }

  dimension: merchant_account {
    type: string
    sql: ${TABLE}."merchant_account" ;;
  }

  dimension: merchant_address {
    type: string
    sql: ${TABLE}."merchant_address" ;;
  }

  dimension: merchant_code {
    type: string
    sql: ${TABLE}."merchant_code" ;;
  }

  dimension: merchant_description {
    type: string
    sql: ${TABLE}."merchant_description" ;;
  }

  dimension: merchant_inventory_merchant_in_store {
    type: string
    sql: ${TABLE}."merchant_inventory_merchant_in_store" ;;
  }

  dimension: part_number {
    type: string
    sql: ${TABLE}."part_number" ;;
  }

  dimension: permanent_terminal_id {
    type: string
    sql: ${TABLE}."permanent_terminal_id" ;;
  }

  dimension_group: report {
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
    sql: ${TABLE}."report_date" ;;
  }

  dimension: serial_number {
    type: string
    sql: ${TABLE}."serial_number" ;;
  }

  dimension: software_version {
    type: string
    sql: ${TABLE}."software_version" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: status_sim_kpn_portal {
    type: string
    sql: ${TABLE}."status_sim_kpn_portal" ;;
  }

  dimension: store_address {
    type: string
    sql: ${TABLE}."store_address" ;;
  }

  dimension: store_code {
    type: string
    sql: ${TABLE}."store_code" ;;
  }

  dimension: store_description {
    type: string
    sql: ${TABLE}."store_description" ;;
  }

  dimension: unique_terminal_id {
    type: string
    sql: ${TABLE}."unique_terminal_id" ;;
  }

  dimension: wifi_ip {
    type: string
    sql: ${TABLE}."wifi_ip" ;;
  }

  dimension: wifi_mac {
    type: string
    sql: ${TABLE}."wifi_mac" ;;
  }

  dimension: wifi_ssid {
    type: string
    sql: ${TABLE}."wifi_ssid" ;;
  }

  measure: count {
    type: count
    drill_fields: [device_name]
  }
}
