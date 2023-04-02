view: nps_responses_all_11_2022 {
  sql_table_name: "WORKSPACE_233686783"."nps_responses_all_11_2022"
    ;;

  dimension: age {
    type: string
    sql: ${TABLE}."age" ;;
  }

  dimension: all_types_grocery {
    type: string
    sql: ${TABLE}."all_types_grocery" ;;
  }

  dimension: arpu {
    type: string
    sql: ${TABLE}."arpu" ;;
  }

  dimension: avg_spent_grocery_monthly {
    type: string
    sql: ${TABLE}."avg_spent_grocery_monthly" ;;
  }

  dimension: avg_spent_grocery_shopping {
    type: string
    sql: ${TABLE}."avg_spent_grocery_shopping" ;;
  }

  dimension: broader_assortment {
    type: string
    sql: ${TABLE}."broader_assortment" ;;
  }

  dimension: children {
    type: string
    sql: ${TABLE}."children" ;;
  }

  dimension: competitor {
    type: string
    sql: ${TABLE}."competitor" ;;
  }

  dimension: competitor_other {
    type: string
    sql: ${TABLE}."competitor_other" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."Country" ;;
  }

  dimension: cs_and_returns {
    type: string
    sql: ${TABLE}."cs_and_returns" ;;
  }

  dimension: date_submitted {
    type: string
    sql: ${TABLE}."Date_Submitted" ;;
  }

  dimension: delivery_fee {
    type: string
    sql: ${TABLE}."delivery_fee" ;;
  }

  dimension: delivery_when_you_want {
    type: string
    sql: ${TABLE}."delivery_when_you_want" ;;
  }

  dimension: drivers_behavior {
    type: string
    sql: ${TABLE}."drivers_behavior" ;;
  }

  dimension: grocery_freshness {
    type: string
    sql: ${TABLE}."grocery_freshness" ;;
  }

  dimension: grocery_quality {
    type: string
    sql: ${TABLE}."grocery_quality" ;;
  }

  dimension: household_size {
    type: string
    sql: ${TABLE}."household_size" ;;
  }

  dimension: main {
    type: string
    sql: ${TABLE}."main" ;;
  }

  dimension: mobile_app_experience {
    type: string
    sql: ${TABLE}."mobile_app_experience" ;;
  }

  dimension: nps_input {
    type: string
    sql: ${TABLE}."NPS_input" ;;
  }

  dimension: pp {
    type: string
    sql: ${TABLE}."PP" ;;
  }

  dimension: price_level {
    type: string
    sql: ${TABLE}."price_level" ;;
  }

  dimension: propensity_to_buy {
    type: string
    sql: ${TABLE}."propensity_to_buy" ;;
  }

  dimension: range_of_assortment {
    type: string
    sql: ${TABLE}."range_of_assortment" ;;
  }

  dimension: response_id {
    type: string
    sql: ${TABLE}."Response_ID" ;;
  }

  dimension: same_day_delivery {
    type: string
    sql: ${TABLE}."same_day_delivery" ;;
  }

  dimension: satisfaction_guarantee {
    type: string
    sql: ${TABLE}."satisfaction_guarantee" ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}."SessionID" ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}."sex" ;;
  }

  dimension: slot_availability {
    type: string
    sql: ${TABLE}."slot_availability" ;;
  }

  dimension: speed_of_delivery {
    type: string
    sql: ${TABLE}."speed_of_delivery" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."Status" ;;
  }

  dimension: supermarket_and_farmers_one_place {
    type: string
    sql: ${TABLE}."supermarket_and_farmers_one_place" ;;
  }

  dimension: supermarket_prices {
    type: string
    sql: ${TABLE}."supermarket_prices" ;;
  }

  dimension: time_started {
    type: string
    sql: ${TABLE}."Time_Started" ;;
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

  dimension: utm_term {
    type: string
    sql: ${TABLE}."utm_term" ;;
  }

  dimension: value_for_money {
    type: string
    sql: ${TABLE}."value_for_money" ;;
  }

  measure: count {
    type: count
    drill_fields: [user.id]
  }
}
