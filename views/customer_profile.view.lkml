view: customer_profile {
  sql_table_name: "WORKSPACE_233686783"."customer_profile"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension: deleted {
    type: string
    sql: ${TABLE}."deleted" ;;
  }

  dimension: filled {
    type: string
    sql: ${TABLE}."filled" ;;
  }

  dimension: first_source {
    type: string
    sql: ${TABLE}."first_source" ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}."location" ;;
  }

  dimension: mode {
    type: string
    sql: ${TABLE}."mode" ;;
  }

  dimension: option {
    type: string
    sql: ${TABLE}."option" ;;
  }

  dimension: option_value {
    type: string
    sql: ${TABLE}."option_value" ;;
  }

  dimension: question_set {
    type: string
    sql: ${TABLE}."question_set" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: user_draft_id {
    type: string
    sql: ${TABLE}."user_draft_id" ;;
  }

  dimension: user_draft_unique_id {
    type: string
    sql: ${TABLE}."user_draft_unique_id" ;;
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
    drill_fields: [id, user.id]
  }
}
