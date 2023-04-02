view: adhoc_3ds_ab_test_eval {
  sql_table_name: "WORKSPACE_233686783"."adhoc_3ds_ab_test_eval"
    ;;

  dimension: 3d_authenticated {
    type: string
    sql: ${TABLE}."3d_authenticated" ;;
  }

  dimension: 3d_offered {
    type: string
    sql: ${TABLE}."3d_offered" ;;
  }

  dimension: adyen_payment_id {
    type: string
    sql: ${TABLE}."adyen_payment_id" ;;
  }

  dimension: adyen_psp_reference {
    type: string
    sql: ${TABLE}."adyen_psp_reference" ;;
  }

  dimension: client_group {
    type: string
    sql: ${TABLE}."client_group" ;;
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

  dimension: origin_platform {
    type: string
    sql: ${TABLE}."origin_platform" ;;
  }

  dimension: payment_status {
    type: string
    sql: ${TABLE}."payment_status" ;;
  }

  dimension: raw_acquirer_response {
    type: string
    sql: ${TABLE}."raw_acquirer_response" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
