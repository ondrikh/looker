view: loyalty_reward {
  sql_table_name: "WORKSPACE_233686783"."loyalty_reward"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: automated {
    type: string
    sql: ${TABLE}."automated" ;;
  }

  dimension: category_id {
    type: string
    sql: ${TABLE}."category_id" ;;
  }

  dimension: category_unique_id {
    type: string
    sql: ${TABLE}."category_unique_id" ;;
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

  dimension: credit_amount {
    type: number
    sql: ${TABLE}."credit_amount" ;;
  }

  dimension: credit_expiration {
    type: string
    sql: ${TABLE}."credit_expiration" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}."orders" ;;
  }

  dimension_group: since {
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
    sql: ${TABLE}."since" ;;
  }

  dimension_group: till {
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
    sql: ${TABLE}."till" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."title" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
