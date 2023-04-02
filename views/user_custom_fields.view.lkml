view: user_custom_fields {
  sql_table_name: "WORKSPACE_233686783"."user_custom_fields"
    ;;

  dimension: action_savings {
    type: number
    sql: ${TABLE}."action_savings" ;;
  }

  dimension: action_savings_180 {
    type: number
    sql: ${TABLE}."action_savings_180" ;;
  }

  dimension: aov {
    type: string
    sql: ${TABLE}."aov" ;;
  }

  dimension: aov365 {
    type: string
    sql: ${TABLE}."aov365" ;;
  }

  dimension: arpu_change {
    type: string
    sql: ${TABLE}."arpu_change" ;;
  }

  dimension: arpu_level {
    type: string
    sql: ${TABLE}."arpu_level" ;;
  }

  dimension: average_monthly_orders {
    type: string
    sql: ${TABLE}."average_monthly_orders" ;;
  }

  dimension: avg_price_tier {
    type: string
    sql: ${TABLE}."avg_price_tier" ;;
  }

  dimension: baby_buyer {
    type: string
    sql: ${TABLE}."baby_buyer" ;;
  }

  dimension: child_segment {
    type: string
    sql: ${TABLE}."child_segment" ;;
  }

  dimension: churn_probability {
    type: string
    sql: ${TABLE}."churn_probability" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: cluster_id {
    type: number
    sql: ${TABLE}."cluster_id" ;;
  }

  dimension: cluster_segment {
    type: string
    sql: ${TABLE}."cluster_segment" ;;
  }

  dimension: connected_accounts {
    type: string
    sql: ${TABLE}."connected_accounts" ;;
  }

  dimension: control_group {
    type: number
    sql: ${TABLE}."control_group" ;;
  }

  dimension: control_group_help {
    type: number
    sql: ${TABLE}."control_group_help" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}."create_date" ;;
  }

  dimension: crm_given_credits_1m {
    type: number
    sql: ${TABLE}."crm_given_credits_1m" ;;
  }

  dimension: crm_given_credits_3m {
    type: number
    sql: ${TABLE}."crm_given_credits_3m" ;;
  }

  dimension: crm_given_credits_6m {
    type: number
    sql: ${TABLE}."crm_given_credits_6m" ;;
  }

  dimension: crm_used_credits_1m {
    type: number
    sql: ${TABLE}."crm_used_credits_1m" ;;
  }

  dimension: crm_used_credits_3m {
    type: number
    sql: ${TABLE}."crm_used_credits_3m" ;;
  }

  dimension: crm_used_credits_6m {
    type: number
    sql: ${TABLE}."crm_used_credits_6m" ;;
  }

  dimension: current_actions_savings {
    type: string
    sql: ${TABLE}."current_actions_savings" ;;
  }

  dimension: current_premium_start {
    type: string
    sql: ${TABLE}."current_premium_start" ;;
  }

  dimension_group: date_updated {
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
    sql: ${TABLE}."date_updated" ;;
  }

  dimension: days_since_first_order {
    type: string
    sql: ${TABLE}."days_since_first_order" ;;
  }

  dimension: days_since_last_email {
    type: string
    sql: ${TABLE}."days_since_last_email" ;;
  }

  dimension: days_since_last_order {
    type: string
    sql: ${TABLE}."days_since_last_order" ;;
  }

  dimension: delay_yesterday {
    type: string
    sql: ${TABLE}."delay_yesterday" ;;
  }

  dimension: delivery_zone {
    type: string
    sql: ${TABLE}."delivery_zone" ;;
  }

  dimension: email_count_1d {
    type: string
    sql: ${TABLE}."email_count_1d" ;;
  }

  dimension: email_count_30d {
    type: string
    sql: ${TABLE}."email_count_30d" ;;
  }

  dimension: email_count_6d {
    type: string
    sql: ${TABLE}."email_count_6d" ;;
  }

  dimension: email_count_7d {
    type: string
    sql: ${TABLE}."email_count_7d" ;;
  }

  dimension: email_count_wtd {
    type: string
    sql: ${TABLE}."email_count_wtd" ;;
  }

  dimension: first_premium_start {
    type: string
    sql: ${TABLE}."first_premium_start" ;;
  }

  dimension: funnel_change {
    type: string
    sql: ${TABLE}."funnel_change" ;;
  }

  dimension: is_chef {
    type: string
    sql: ${TABLE}."isChef" ;;
  }

  dimension: is_master {
    type: number
    sql: ${TABLE}."is_master" ;;
  }

  dimension: is_parents_club {
    type: string
    sql: ${TABLE}."is_parents_club" ;;
  }

  dimension: is_premium {
    type: number
    sql: ${TABLE}."is_premium" ;;
  }

  dimension: is_senior {
    type: string
    sql: ${TABLE}."is_senior" ;;
  }

  dimension: l1_range {
    type: string
    sql: ${TABLE}."L1_range" ;;
  }

  dimension: last_clicked_date {
    type: string
    sql: ${TABLE}."last_clicked_date" ;;
  }

  dimension: last_opened_date {
    type: string
    sql: ${TABLE}."last_opened_date" ;;
  }

  dimension: last_order_rating {
    type: string
    sql: ${TABLE}."last_order_rating" ;;
  }

  dimension: locale {
    type: string
    sql: ${TABLE}."locale" ;;
  }

  dimension: mailing_enabled {
    type: string
    sql: ${TABLE}."mailing_enabled" ;;
  }

  dimension: main_funnel {
    type: string
    sql: ${TABLE}."main_funnel" ;;
  }

  dimension: name_day_date {
    type: string
    sql: ${TABLE}."name_day_date" ;;
  }

  dimension: nb_next_order_probability {
    type: string
    sql: ${TABLE}."nb_next_order_probability" ;;
  }

  dimension: next_shopping_date {
    type: string
    sql: ${TABLE}."next_shopping_date" ;;
  }

  dimension: orders {
    type: string
    sql: ${TABLE}."orders" ;;
  }

  dimension: orders_365 {
    type: string
    sql: ${TABLE}."orders_365" ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}."postal_code" ;;
  }

  dimension: premium_autorenewal {
    type: string
    sql: ${TABLE}."premium_autorenewal" ;;
  }

  dimension: premium_expiration_date {
    type: string
    sql: ${TABLE}."premium_expiration_date" ;;
  }

  dimension: premium_monthly_refresh_date {
    type: string
    sql: ${TABLE}."premium_monthly_refresh_date" ;;
  }

  dimension: premium_months_subscribed {
    type: string
    sql: ${TABLE}."premium_months_subscribed" ;;
  }

  dimension: premium_order_count {
    type: string
    sql: ${TABLE}."premium_order_count" ;;
  }

  dimension: premium_type {
    type: string
    sql: ${TABLE}."premium_type" ;;
  }

  dimension: primary_sms {
    type: number
    sql: ${TABLE}."primary_sms" ;;
  }

  dimension: profile_coffee {
    type: number
    sql: ${TABLE}."profile_coffee" ;;
  }

  dimension: profile_completed {
    type: number
    sql: ${TABLE}."profile_completed" ;;
  }

  dimension: profile_fish_seafood {
    type: number
    sql: ${TABLE}."profile_fish_seafood" ;;
  }

  dimension: profile_little_children {
    type: number
    sql: ${TABLE}."profile_little_children" ;;
  }

  dimension: profile_meat {
    type: number
    sql: ${TABLE}."profile_meat" ;;
  }

  dimension: profile_older_children {
    type: number
    sql: ${TABLE}."profile_older_children" ;;
  }

  dimension: profile_one_or_more_adult {
    type: number
    sql: ${TABLE}."profile_one_or_more_adult" ;;
  }

  dimension: profile_pets {
    type: number
    sql: ${TABLE}."profile_pets" ;;
  }

  dimension: profile_profile_bio {
    type: number
    sql: ${TABLE}."profile_profile_bio" ;;
  }

  dimension: profile_profile_no_alcohol {
    type: number
    sql: ${TABLE}."profile_profile_no_alcohol" ;;
  }

  dimension: profile_profile_vegan {
    type: number
    sql: ${TABLE}."profile_profile_vegan" ;;
  }

  dimension: profile_profile_vegetarian {
    type: number
    sql: ${TABLE}."profile_profile_vegetarian" ;;
  }

  dimension: profile_sweets_chocolate {
    type: number
    sql: ${TABLE}."profile_sweets_chocolate" ;;
  }

  dimension: profile_tea {
    type: number
    sql: ${TABLE}."profile_tea" ;;
  }

  dimension: profile_unique_cheese {
    type: number
    sql: ${TABLE}."profile_unique_cheese" ;;
  }

  dimension: profile_wine {
    type: number
    sql: ${TABLE}."profile_wine" ;;
  }

  dimension: push_count_1d {
    type: string
    sql: ${TABLE}."push_count_1d" ;;
  }

  dimension: push_count_30d {
    type: string
    sql: ${TABLE}."push_count_30d" ;;
  }

  dimension: push_count_6d {
    type: string
    sql: ${TABLE}."push_count_6d" ;;
  }

  dimension: push_count_7d {
    type: string
    sql: ${TABLE}."push_count_7d" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."region" ;;
  }

  dimension: rohlik_point {
    type: string
    sql: ${TABLE}."rohlik_point" ;;
  }

  dimension: sale_spend {
    type: number
    sql: ${TABLE}."sale_spend" ;;
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}."salutation" ;;
  }

  dimension: salutation_sms {
    type: string
    sql: ${TABLE}."salutation_sms" ;;
  }

  dimension: shopping_cycle {
    type: string
    sql: ${TABLE}."shopping_cycle" ;;
  }

  dimension: shopping_cycle_next_phase_date {
    type: string
    sql: ${TABLE}."shopping_cycle_next_phase_date" ;;
  }

  dimension: sku_bestbuy1 {
    type: string
    sql: ${TABLE}."SKU_bestbuy1" ;;
  }

  dimension: sku_bestbuy2 {
    type: string
    sql: ${TABLE}."SKU_bestbuy2" ;;
  }

  dimension: sku_bestbuy3 {
    type: string
    sql: ${TABLE}."SKU_bestbuy3" ;;
  }

  dimension: sku_bestbuy4 {
    type: string
    sql: ${TABLE}."SKU_bestbuy4" ;;
  }

  dimension: sku_bestbuy5 {
    type: string
    sql: ${TABLE}."SKU_bestbuy5" ;;
  }

  dimension: sku_bestbuy6 {
    type: string
    sql: ${TABLE}."SKU_bestbuy6" ;;
  }

  dimension: sku_discount1 {
    type: string
    sql: ${TABLE}."SKU_discount1" ;;
  }

  dimension: sku_discount2 {
    type: string
    sql: ${TABLE}."SKU_discount2" ;;
  }

  dimension: sku_discount3 {
    type: string
    sql: ${TABLE}."SKU_discount3" ;;
  }

  dimension: sku_discount4 {
    type: string
    sql: ${TABLE}."SKU_discount4" ;;
  }

  dimension: sku_discount5 {
    type: string
    sql: ${TABLE}."SKU_discount5" ;;
  }

  dimension: sku_discount6 {
    type: string
    sql: ${TABLE}."SKU_discount6" ;;
  }

  dimension: sku_discount_push {
    type: string
    sql: ${TABLE}."SKU_discount_push" ;;
  }

  dimension: sku_favourites1 {
    type: string
    sql: ${TABLE}."SKU_favourites1" ;;
  }

  dimension: sku_favourites2 {
    type: string
    sql: ${TABLE}."SKU_favourites2" ;;
  }

  dimension: sku_favourites3 {
    type: string
    sql: ${TABLE}."SKU_favourites3" ;;
  }

  dimension: sku_favourites4 {
    type: string
    sql: ${TABLE}."SKU_favourites4" ;;
  }

  dimension: sku_favourites5 {
    type: string
    sql: ${TABLE}."SKU_favourites5" ;;
  }

  dimension: sku_favourites6 {
    type: string
    sql: ${TABLE}."SKU_favourites6" ;;
  }

  dimension: sku_new1 {
    type: string
    sql: ${TABLE}."SKU_new1" ;;
  }

  dimension: sku_new2 {
    type: string
    sql: ${TABLE}."SKU_new2" ;;
  }

  dimension: sku_new3 {
    type: string
    sql: ${TABLE}."SKU_new3" ;;
  }

  dimension: sku_new4 {
    type: string
    sql: ${TABLE}."SKU_new4" ;;
  }

  dimension: sku_new5 {
    type: string
    sql: ${TABLE}."SKU_new5" ;;
  }

  dimension: sku_new6 {
    type: string
    sql: ${TABLE}."SKU_new6" ;;
  }

  dimension: sku_new_product_mobile_push {
    type: string
    sql: ${TABLE}."SKU_new_product_mobile_push" ;;
  }

  dimension: sku_reminder_needed_favourites1 {
    type: string
    sql: ${TABLE}."SKU_reminder_needed_favourites1" ;;
  }

  dimension: sku_reminder_needed_favourites2 {
    type: string
    sql: ${TABLE}."SKU_reminder_needed_favourites2" ;;
  }

  dimension: sku_reminder_needed_favourites3 {
    type: string
    sql: ${TABLE}."SKU_reminder_needed_favourites3" ;;
  }

  dimension: sku_reminder_top_favourites1 {
    type: string
    sql: ${TABLE}."SKU_reminder_top_favourites1" ;;
  }

  dimension: sku_reminder_top_favourites2 {
    type: string
    sql: ${TABLE}."SKU_reminder_top_favourites2" ;;
  }

  dimension: sku_reminder_top_favourites3 {
    type: string
    sql: ${TABLE}."SKU_reminder_top_favourites3" ;;
  }

  dimension: sku_reminder_upsell_fav_cat_inspiration1 {
    type: string
    sql: ${TABLE}."SKU_reminder_upsell_fav_cat_inspiration1" ;;
  }

  dimension: sku_reminder_upsell_fav_cat_inspiration2 {
    type: string
    sql: ${TABLE}."SKU_reminder_upsell_fav_cat_inspiration2" ;;
  }

  dimension: sku_reminder_upsell_fav_cat_inspiration3 {
    type: string
    sql: ${TABLE}."SKU_reminder_upsell_fav_cat_inspiration3" ;;
  }

  dimension: sms_count_1d {
    type: string
    sql: ${TABLE}."sms_count_1d" ;;
  }

  dimension: sms_count_30d {
    type: string
    sql: ${TABLE}."sms_count_30d" ;;
  }

  dimension: sms_count_6d {
    type: string
    sql: ${TABLE}."sms_count_6d" ;;
  }

  dimension: sms_count_7d {
    type: string
    sql: ${TABLE}."sms_count_7d" ;;
  }

  dimension: sms_exclude {
    type: string
    sql: ${TABLE}."sms_exclude" ;;
  }

  dimension: upsell_category_id {
    type: string
    sql: ${TABLE}."upsell_category_id" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: xsell_category_id {
    type: string
    sql: ${TABLE}."xsell_category_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [user.id]
  }
}
