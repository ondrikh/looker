view: edi_penetration {
  sql_table_name: "WORKSPACE_233686783"."edi_penetration"
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

  dimension: deliver_at {
    type: string
    sql: ${TABLE}."deliver_at" ;;
  }

  dimension: delivery_note {
    type: number
    sql: ${TABLE}."DELIVERY_NOTE" ;;
  }

  dimension: dic {
    type: string
    sql: ${TABLE}."dic" ;;
  }

  dimension: gln_code {
    type: string
    sql: ${TABLE}."gln_code" ;;
  }

  dimension: ic {
    type: string
    sql: ${TABLE}."ic" ;;
  }

  dimension: invoice {
    type: number
    sql: ${TABLE}."INVOICE" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}."ORDER" ;;
  }

  dimension: order_channel {
    type: string
    sql: ${TABLE}."order_channel" ;;
  }

  dimension: order_resp {
    type: number
    sql: ${TABLE}."ORDER_RESP" ;;
  }

  dimension: order_total {
    type: number
    sql: ${TABLE}."ORDER_TOTAL" ;;
  }

  dimension: receiving_adv {
    type: number
    sql: ${TABLE}."RECEIVING_ADV" ;;
  }

  dimension: supplier_active {
    type: string
    sql: ${TABLE}."supplier_active" ;;
  }

  dimension: supplier_id {
    type: string
    sql: ${TABLE}."supplier_id" ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}."supplier_name" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, supplier_name, name]
  }
}
