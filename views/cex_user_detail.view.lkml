view: cex_user_detail {
  sql_table_name: "WORKSPACE_233686783"."cex_user_detail"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: age {
    type: string
    sql: ${TABLE}."age" ;;
  }

  dimension: all_types_grocery {
    type: string
    sql: ${TABLE}."all_types_grocery" ;;
  }

  dimension: aov_l30_d {
    type: string
    sql: ${TABLE}."aov_L30D" ;;
  }

  dimension: aov_l30_d_eur {
    type: string
    sql: ${TABLE}."aov_L30D_eur" ;;
  }

  dimension: aov_l90_d {
    type: string
    sql: ${TABLE}."aov_L90D" ;;
  }

  dimension: aov_l90_d_eur {
    type: string
    sql: ${TABLE}."aov_L90D_eur" ;;
  }

  dimension: app_proportion_l30_d {
    type: string
    sql: ${TABLE}."app_proportion_L30D" ;;
  }

  dimension: app_proportion_l90_d {
    type: string
    sql: ${TABLE}."app_proportion_L90D" ;;
  }

  dimension: arpu {
    type: string
    sql: ${TABLE}."arpu" ;;
  }

  dimension: arpu_level_user_table {
    type: string
    sql: ${TABLE}."arpu_level_user_table" ;;
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

  dimension: country_user_table {
    type: string
    sql: ${TABLE}."country_user_table" ;;
  }

  dimension: cs_and_returns {
    type: string
    sql: ${TABLE}."cs_and_returns" ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}."DATE" ;;
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

  dimension: first_order_time {
    type: string
    sql: ${TABLE}."first_order_time" ;;
  }

  dimension: gr_l30_d {
    type: string
    sql: ${TABLE}."gr_L30D" ;;
  }

  dimension: gr_l30_d_eur {
    type: string
    sql: ${TABLE}."gr_L30D_eur" ;;
  }

  dimension: gr_l90_d {
    type: string
    sql: ${TABLE}."gr_L90D" ;;
  }

  dimension: gr_l90_d_eur {
    type: string
    sql: ${TABLE}."gr_L90D_eur" ;;
  }

  dimension: grocery_freshness {
    type: string
    sql: ${TABLE}."grocery_freshness" ;;
  }

  dimension: grocery_quality {
    type: string
    sql: ${TABLE}."grocery_quality" ;;
  }

  dimension: has_paid_premium {
    type: string
    sql: ${TABLE}."has_paid_premium" ;;
  }

  dimension: has_premium {
    type: string
    sql: ${TABLE}."has_premium" ;;
  }

  dimension: household_size {
    type: string
    sql: ${TABLE}."household_size" ;;
  }

  dimension: l2_categories_l30_d {
    type: string
    sql: ${TABLE}."L2_categories_L30D" ;;
  }

  dimension: l2_categories_l90_d {
    type: string
    sql: ${TABLE}."L2_categories_L90D" ;;
  }

  dimension: l3_categories_l30_d {
    type: string
    sql: ${TABLE}."L3_categories_L30D" ;;
  }

  dimension: l3_categories_l90_d {
    type: string
    sql: ${TABLE}."L3_categories_L90D" ;;
  }

  dimension: main {
    type: string
    sql: ${TABLE}."main" ;;
  }

  dimension: main_funnel_user_table {
    type: string
    sql: ${TABLE}."main_funnel_user_table" ;;
  }

  dimension: master_user_unique_id {
    type: string
    sql: ${TABLE}."master_user_unique_id" ;;
  }

  dimension: mobile_app_experience {
    type: string
    sql: ${TABLE}."mobile_app_experience" ;;
  }

  dimension: mobile_web_proportion_l30_d {
    type: string
    sql: ${TABLE}."mobile_web_proportion_L30D" ;;
  }

  dimension: mobile_web_proportion_l90_d {
    type: string
    sql: ${TABLE}."mobile_web_proportion_L90D" ;;
  }

  dimension: nps_input {
    type: string
    sql: ${TABLE}."NPS_input" ;;
  }

  dimension: nr_l30_d {
    type: string
    sql: ${TABLE}."nr_L30D" ;;
  }

  dimension: nr_l30_d_eur {
    type: string
    sql: ${TABLE}."nr_L30D_eur" ;;
  }

  dimension: nr_l90_d {
    type: string
    sql: ${TABLE}."nr_L90D" ;;
  }

  dimension: nr_l90_d_eur {
    type: string
    sql: ${TABLE}."nr_L90D_eur" ;;
  }

  dimension: orders_l30_d {
    type: string
    sql: ${TABLE}."orders_L30D" ;;
  }

  dimension: orders_l90_d {
    type: string
    sql: ${TABLE}."orders_L90D" ;;
  }

  dimension: parents_club {
    type: string
    sql: ${TABLE}."parents_club" ;;
  }

  dimension: pp {
    type: string
    sql: ${TABLE}."PP" ;;
  }

  dimension: premium_type {
    type: string
    sql: ${TABLE}."premium_type" ;;
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

  dimension: sex_user_table {
    type: string
    sql: ${TABLE}."sex_user_table" ;;
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

  dimension: timestamp {
    type: string
    sql: ${TABLE}."timestamp" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."unique_id" ;;
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

  dimension: web_proportion_l30_d {
    type: string
    sql: ${TABLE}."web_proportion_L30D" ;;
  }

  dimension: web_proportion_l90_d {
    type: string
    sql: ${TABLE}."web_proportion_L90D" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user.id]
  }
}
