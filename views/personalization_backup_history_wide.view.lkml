view: personalization_backup_history_wide {
  sql_table_name: "WORKSPACE_233686783"."personalization_backup_history_wide"
    ;;

  dimension: bottom_checkout_subvariant {
    type: string
    sql: ${TABLE}."bottom_checkout_subvariant" ;;
  }

  dimension: bottom_checkout_variant {
    type: string
    sql: ${TABLE}."bottom_checkout_variant" ;;
  }

  dimension: cart_next_best_offer {
    type: string
    sql: ${TABLE}."cart_next_best_offer" ;;
  }

  dimension: category_inspiration_belt_subvariant {
    type: string
    sql: ${TABLE}."category_inspiration_belt_subvariant" ;;
  }

  dimension: category_inspiration_belt_variant {
    type: string
    sql: ${TABLE}."category_inspiration_belt_variant" ;;
  }

  dimension: category_layout_subvariant {
    type: string
    sql: ${TABLE}."category_layout_subvariant" ;;
  }

  dimension: category_layout_variant {
    type: string
    sql: ${TABLE}."category_layout_variant" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: favourites_subvariant {
    type: string
    sql: ${TABLE}."favourites_subvariant" ;;
  }

  dimension: favourites_variant {
    type: string
    sql: ${TABLE}."favourites_variant" ;;
  }

  dimension: global_control {
    type: string
    sql: ${TABLE}."global_control" ;;
  }

  dimension: new_homepage_subvariant {
    type: string
    sql: ${TABLE}."new_homepage_subvariant" ;;
  }

  dimension: new_homepage_variant {
    type: string
    sql: ${TABLE}."new_homepage_variant" ;;
  }

  dimension: playlist_variant {
    type: string
    sql: ${TABLE}."playlist_variant" ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}."quarter" ;;
  }

  dimension: search_bar_default_variant {
    type: string
    sql: ${TABLE}."search_bar_default_variant" ;;
  }

  dimension: search_whisper_recommend_realtime {
    type: string
    sql: ${TABLE}."search_whisper_recommend_realtime" ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}."timestamp" ;;
  }

  dimension: top_checkout_subvariant {
    type: string
    sql: ${TABLE}."top_checkout_subvariant" ;;
  }

  dimension: top_checkout_variant {
    type: string
    sql: ${TABLE}."top_checkout_variant" ;;
  }

  dimension: upsell_checkout_realtime_subvariant {
    type: string
    sql: ${TABLE}."upsell_checkout_realtime_subvariant" ;;
  }

  dimension: upsell_checkout_realtime_variant {
    type: string
    sql: ${TABLE}."upsell_checkout_realtime_variant" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  dimension: weekly_regulars_subvariant {
    type: string
    sql: ${TABLE}."weekly_regulars_subvariant" ;;
  }

  dimension: weekly_regulars_variant {
    type: string
    sql: ${TABLE}."weekly_regulars_variant" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
