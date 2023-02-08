view: test {
  derived_table: {
    sql: select *
      from rohlik_prod.multiprocess_test
      where country = 'cz'
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: action_id {
    type: number
    sql: ${TABLE}.action_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: inventory_item_id {
    type: number
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: warehouse_id {
    type: number
    sql: ${TABLE}.warehouse_id ;;
  }

  dimension: grocery_id {
    type: number
    sql: ${TABLE}.grocery_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: supplier {
    type: string
    sql: ${TABLE}.supplier ;;
  }

  dimension_group: started_at {
    type: time
    sql: ${TABLE}.started_at ;;
  }

  dimension_group: ends_at {
    type: time
    sql: ${TABLE}.ends_at ;;
  }

  dimension_group: expires_at {
    type: time
    sql: ${TABLE}.expires_at ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: remaining {
    type: number
    sql: ${TABLE}.remaining ;;
  }

  dimension: dispo {
    type: number
    sql: ${TABLE}.dispo ;;
  }

  dimension: amount_w_delta {
    type: number
    sql: ${TABLE}.amount_w_delta ;;
  }

  dimension: unit_coefficient {
    type: number
    sql: ${TABLE}.unit_coefficient ;;
  }

  dimension: sale {
    type: number
    sql: ${TABLE}.sale ;;
  }

  dimension: remaining_x_original_price {
    type: number
    sql: ${TABLE}.remaining_X_original_price ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: original_price {
    type: number
    sql: ${TABLE}.original_price ;;
  }

  dimension: semi_caliber_price_per_kg {
    type: number
    sql: ${TABLE}.semi_caliber_price_per_kg ;;
  }

  dimension: original_semi_caliber_price_per_kg {
    type: number
    sql: ${TABLE}.original_semi_caliber_price_per_kg ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  set: detail {
    fields: [
      action_id,
      type,
      inventory_item_id,
      warehouse_id,
      grocery_id,
      name,
      supplier,
      started_at_time,
      ends_at_time,
      expires_at_time,
      amount,
      remaining,
      dispo,
      amount_w_delta,
      unit_coefficient,
      sale,
      remaining_x_original_price,
      price,
      original_price,
      semi_caliber_price_per_kg,
      original_semi_caliber_price_per_kg,
      country
    ]
  }
}
