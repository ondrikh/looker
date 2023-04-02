view: mailing_detail_all {
  sql_table_name: "WORKSPACE_233686783"."mailing_detail_all"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}."campaign_id" ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}."campaign_name" ;;
  }

  dimension: campaign_type {
    type: string
    sql: ${TABLE}."campaign_type" ;;
  }

  dimension: campaign_unique_id {
    type: string
    sql: ${TABLE}."campaign_unique_id" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}."customer" ;;
  }

  dimension: main_funnel {
    type: string
    sql: ${TABLE}."main_funnel" ;;
  }

  dimension: profile_id {
    type: string
    sql: ${TABLE}."profile_id" ;;
  }

  dimension: sailthru_profil_url {
    type: string
    sql: ${TABLE}."sailthru_profil_url" ;;
  }

  dimension: send_time {
    type: string
    sql: ${TABLE}."send_time" ;;
  }

  dimension: sharp_metric {
    type: string
    sql: ${TABLE}."sharp_metric" ;;
  }

  dimension: sharp_metric_reason {
    type: string
    sql: ${TABLE}."sharp_metric_reason" ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}."subject" ;;
  }

  dimension: template_id {
    type: string
    sql: ${TABLE}."template_id" ;;
  }

  dimension: template_unique_id {
    type: string
    sql: ${TABLE}."template_unique_id" ;;
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
    drill_fields: [id, campaign_name, user.id]
  }
}
