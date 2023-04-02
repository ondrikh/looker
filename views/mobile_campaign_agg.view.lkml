view: mobile_campaign_agg {
  sql_table_name: "WORKSPACE_233686783"."mobile_campaign_agg"
    ;;

  dimension: additional_orders_per_100_users {
    type: number
    sql: ${TABLE}."additional_orders_per_100_users" ;;
  }

  dimension: additional_orders_per_campaign {
    type: number
    sql: ${TABLE}."additional_orders_per_campaign" ;;
  }

  dimension: additional_revenue_per_campaign {
    type: number
    sql: ${TABLE}."additional_revenue_per_campaign" ;;
  }

  dimension: aov_delivered {
    type: number
    sql: ${TABLE}."aov_delivered" ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}."campaign_name" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: direct_rate {
    type: number
    sql: ${TABLE}."direct_rate" ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: hours {
    type: string
    sql: ${TABLE}."hours" ;;
  }

  dimension: incremental_revenue {
    type: number
    sql: ${TABLE}."incremental_revenue" ;;
  }

  dimension: indirect_rate {
    type: number
    sql: ${TABLE}."indirect_rate" ;;
  }

  dimension: order_rate {
    type: number
    sql: ${TABLE}."order_rate" ;;
  }

  dimension: orders_delivered {
    type: number
    sql: ${TABLE}."orders_delivered" ;;
  }

  dimension: p_value {
    type: number
    sql: ${TABLE}."p_value" ;;
  }

  dimension: revenue_delivered {
    type: number
    sql: ${TABLE}."revenue_delivered" ;;
  }

  dimension: revenue_per_user {
    type: number
    sql: ${TABLE}."revenue_per_user" ;;
  }

  dimension: revenue_uplift {
    type: number
    sql: ${TABLE}."revenue_uplift" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."start_time" ;;
  }

  dimension: uplift_significancy {
    type: string
    sql: ${TABLE}."uplift_significancy" ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}."users" ;;
  }

  dimension: z {
    type: number
    sql: ${TABLE}."z" ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}
