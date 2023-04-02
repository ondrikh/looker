view: crm_perso_user_control_groups {
  sql_table_name: "WORKSPACE_233686783"."crm_perso_user_control_groups"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: crm_control_group {
    type: string
    sql: ${TABLE}."crm_control_group" ;;
  }

  dimension: perso_control_group {
    type: string
    sql: ${TABLE}."perso_control_group" ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}."snapshot_date" ;;
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

  measure: count {
    type: count
    drill_fields: [user.id]
  }
}
