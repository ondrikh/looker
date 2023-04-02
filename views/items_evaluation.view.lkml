view: items_evaluation {
  sql_table_name: "WORKSPACE_233686783"."items_evaluation"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: block_editing {
    type: string
    sql: ${TABLE}."block_editing" ;;
  }

  dimension: category1_code {
    type: string
    sql: ${TABLE}."category1_code" ;;
  }

  dimension: chilled_count {
    type: number
    sql: ${TABLE}."chilled_count" ;;
  }

  dimension: chilled_score {
    type: number
    sql: ${TABLE}."chilled_score" ;;
  }

  dimension: custom_id {
    type: string
    sql: ${TABLE}."custom_id" ;;
  }

  dimension: frozen_count {
    type: number
    sql: ${TABLE}."frozen_count" ;;
  }

  dimension: frozen_score {
    type: number
    sql: ${TABLE}."frozen_score" ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}."item_id" ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}."item_name" ;;
  }

  dimension: last_edit_at {
    type: string
    sql: ${TABLE}."last_edit_at" ;;
  }

  dimension: last_edit_by {
    type: string
    sql: ${TABLE}."last_edit_by" ;;
  }

  dimension: number_of_notes {
    type: number
    sql: ${TABLE}."number_of_notes" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."order_id" ;;
  }

  dimension: product_score {
    type: number
    sql: ${TABLE}."product_score" ;;
  }

  dimension: quality {
    type: number
    sql: ${TABLE}."quality" ;;
  }

  dimension: quality_count {
    type: number
    sql: ${TABLE}."quality_count" ;;
  }

  dimension: quality_fru_vege {
    type: number
    sql: ${TABLE}."quality_fru_vege" ;;
  }

  dimension: quality_fru_vege_count {
    type: number
    sql: ${TABLE}."quality_fru_vege_count" ;;
  }

  dimension: quality_fru_vege_note {
    type: string
    sql: ${TABLE}."quality_fru_vege_note" ;;
  }

  dimension: quality_fru_vege_score {
    type: number
    sql: ${TABLE}."quality_fru_vege_score" ;;
  }

  dimension: quality_note {
    type: string
    sql: ${TABLE}."quality_note" ;;
  }

  dimension: quality_score {
    type: string
    sql: ${TABLE}."quality_score" ;;
  }

  dimension: shelf_life {
    type: number
    sql: ${TABLE}."shelf_life" ;;
  }

  dimension: shelf_life_count {
    type: number
    sql: ${TABLE}."shelf_life_count" ;;
  }

  dimension: shelf_life_note {
    type: string
    sql: ${TABLE}."shelf_life_note" ;;
  }

  dimension: shelf_life_score {
    type: number
    sql: ${TABLE}."shelf_life_score" ;;
  }

  dimension: temperature_chilled {
    type: number
    sql: ${TABLE}."temperature_chilled" ;;
  }

  dimension: temperature_chilled_note {
    type: string
    sql: ${TABLE}."temperature_chilled_note" ;;
  }

  dimension: temperature_frozen {
    type: number
    sql: ${TABLE}."temperature_frozen" ;;
  }

  dimension: temperature_frozen_note {
    type: string
    sql: ${TABLE}."temperature_frozen_note" ;;
  }

  dimension: temperature_meassure_order {
    type: number
    sql: ${TABLE}."temperature_meassure_order" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      item_name,
      order.courier_name,
      order.warehouse_name,
      order.delivery_point_name,
      order.id
    ]
  }
}
