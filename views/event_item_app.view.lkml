view: event_item_app {
  sql_table_name: "WORKSPACE_233686783"."event_item_app"
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}."event_name" ;;
  }

  dimension: event_timestamp {
    type: string
    sql: ${TABLE}."event_timestamp" ;;
  }

  dimension: ga_key_id {
    type: string
    sql: ${TABLE}."ga_key_id" ;;
  }

  dimension: item_category {
    type: string
    sql: ${TABLE}."item_category" ;;
  }

  dimension: item_category2 {
    type: string
    sql: ${TABLE}."item_category2" ;;
  }

  dimension: item_category3 {
    type: string
    sql: ${TABLE}."item_category3" ;;
  }

  dimension: item_category4 {
    type: string
    sql: ${TABLE}."item_category4" ;;
  }

  dimension: item_category5 {
    type: string
    sql: ${TABLE}."item_category5" ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}."item_id" ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}."item_name" ;;
  }

  dimension: item_unique_id {
    type: string
    sql: ${TABLE}."item_unique_id" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}."price" ;;
  }

  dimension: quantity {
    type: string
    sql: ${TABLE}."quantity" ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}."user_pseudo_id" ;;
  }

  dimension: user_pseudo_unique_id {
    type: string
    sql: ${TABLE}."user_pseudo_unique_id" ;;
  }

  dimension: user_unique_id {
    type: string
    sql: ${TABLE}."user_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [item_name, event_name, user.id]
  }
}
