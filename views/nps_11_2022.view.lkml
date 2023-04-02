view: nps_11_2022 {
  sql_table_name: "WORKSPACE_233686783"."nps_11_2022"
    ;;

  dimension: nps_input {
    type: number
    sql: ${TABLE}."NPS_input" ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}."Site" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [user.id]
  }
}
