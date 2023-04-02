view: adyen_transmission_chargeback {
  sql_table_name: "WORKSPACE_233686783"."adyen_transmission_chargeback"
    ;;

  dimension: adyen_payment_unique_id {
    type: string
    sql: ${TABLE}."adyen_payment_unique_id" ;;
  }

  dimension: adyen_transaction_psp_reference {
    type: string
    sql: ${TABLE}."adyen_transaction_psp_reference" ;;
  }

  dimension: adyen_transmission_unique_id {
    type: string
    sql: ${TABLE}."adyen_transmission_unique_id" ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}."created_at" ;;
  }

  dimension: created_by_unique_id {
    type: string
    sql: ${TABLE}."created_by_unique_id" ;;
  }

  dimension: detail_response_message {
    type: string
    sql: ${TABLE}."detail_response_message" ;;
  }

  dimension: pay_method {
    type: string
    sql: ${TABLE}."pay_method" ;;
  }

  dimension: payment_status {
    type: string
    sql: ${TABLE}."payment_status" ;;
  }

  dimension: response_message {
    type: string
    sql: ${TABLE}."response_message" ;;
  }

  dimension: rn_duplicity {
    type: number
    sql: ${TABLE}."rn_duplicity" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
