view: personalization_abtest {
  sql_table_name: "WORKSPACE_233686783"."personalization_abtest"
    ;;

  dimension: abtest {
    type: string
    sql: ${TABLE}."abtest" ;;
  }

  dimension: buyers_total {
    type: number
    sql: ${TABLE}."buyers_total" ;;
  }

  dimension: buyers_touchpoint {
    type: number
    sql: ${TABLE}."buyers_touchpoint" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: gr_total {
    type: number
    sql: ${TABLE}."gr_total" ;;
  }

  dimension: gr_touchpoint {
    type: number
    sql: ${TABLE}."gr_touchpoint" ;;
  }

  dimension: l2 {
    type: number
    sql: ${TABLE}."l2" ;;
  }

  dimension: l3 {
    type: number
    sql: ${TABLE}."l3" ;;
  }

  dimension: orders_total {
    type: number
    sql: ${TABLE}."orders_total" ;;
  }

  dimension: orders_touchpoint {
    type: number
    sql: ${TABLE}."orders_touchpoint" ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}."quarter" ;;
  }

  dimension: subvariant {
    type: string
    sql: ${TABLE}."subvariant" ;;
  }

  dimension: variant {
    type: string
    sql: ${TABLE}."variant" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
