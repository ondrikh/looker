view: warehouse_entrance_allocation {
  sql_table_name: "WORKSPACE_233686783"."warehouse_entrance_allocation"
    ;;

  dimension: accepted_at {
    type: string
    sql: ${TABLE}."accepted_at" ;;
  }

  dimension: activity_area_unique_identifier {
    type: string
    sql: ${TABLE}."activity_area_unique_identifier" ;;
  }

  dimension: activity_name {
    type: string
    sql: ${TABLE}."activity_name" ;;
  }

  dimension: activity_unique_id {
    type: string
    sql: ${TABLE}."activity_unique_id" ;;
  }

  dimension: allocation_created_at {
    type: string
    sql: ${TABLE}."allocation_created_at" ;;
  }

  dimension: allocation_unique_id {
    type: string
    sql: ${TABLE}."allocation_unique_id" ;;
  }

  dimension: area_unique_identifier {
    type: string
    sql: ${TABLE}."area_unique_identifier" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}."created_at" ;;
  }

  dimension: delay {
    type: number
    sql: ${TABLE}."delay" ;;
  }

  dimension: entry_time {
    type: string
    sql: ${TABLE}."entry_time" ;;
  }

  dimension: entry_unique_id {
    type: string
    sql: ${TABLE}."entry_unique_id" ;;
  }

  dimension: exit_time {
    type: string
    sql: ${TABLE}."exit_time" ;;
  }

  dimension: last_activity_time {
    type: string
    sql: ${TABLE}."last_activity_time" ;;
  }

  dimension: login_time {
    type: string
    sql: ${TABLE}."login_time" ;;
  }

  dimension: logout_time {
    type: string
    sql: ${TABLE}."logout_time" ;;
  }

  dimension: measured_at {
    type: string
    sql: ${TABLE}."measured_at" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: procees_group_name {
    type: string
    sql: ${TABLE}."procees_group_name" ;;
  }

  dimension: process_name {
    type: string
    sql: ${TABLE}."process_name" ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}."rank" ;;
  }

  dimension: user_email {
    type: string
    sql: ${TABLE}."user_email" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: valid_to {
    type: string
    sql: ${TABLE}."valid_to" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  dimension: worked_there {
    type: number
    sql: ${TABLE}."worked_there" ;;
  }

  measure: count {
    type: count
    drill_fields: [name, process_name, procees_group_name, activity_name, user.id]
  }
}
